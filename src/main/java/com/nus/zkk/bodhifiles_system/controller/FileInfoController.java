package com.nus.zkk.bodhifiles_system.controller;


import com.nus.zkk.bodhifiles_system.entity.dto.FileInfoDTO;
import com.nus.zkk.bodhifiles_system.entity.dto.OpenFileDTO;
import com.nus.zkk.bodhifiles_system.service.FileInfoService;
import org.springframework.beans.factory.ListableBeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 文件资源表 前端控制器
 * </p>
 *
 * @author jojo
 * @since 2024-10-16
 */
@RestController
@RequestMapping("/file")
public class FileInfoController {
    @Autowired
    private FileInfoService fileInfoService;

    /**
     * 获取文件列表
     */
    @GetMapping("/{userId}")
    public ResponseEntity<List<FileInfoDTO>> getUserFiles(@PathVariable Integer userId) {
        List<FileInfoDTO> files = fileInfoService.getFilesByUserId(userId);
        return ResponseEntity.ok(files);

    }

    /**
     * 打开文件
     */
    @GetMapping("openurl/{id}")
    public ResponseEntity<List<OpenFileDTO>> getFileUrlById(@PathVariable Integer id) {
        List<OpenFileDTO> fileUrl = fileInfoService.getFileUrlById(id);

        if (fileUrl != null) {
            return ResponseEntity.ok(fileUrl);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(Collections.emptyList());
        }

    }

    /**
     * 新建文件
     */
    @PostMapping("create/file")
    public ResponseEntity<?> createFile(@RequestBody Map<String, String> request) {
        int userId = Integer.parseInt(request.get("user_id"));
        String absolutePath = request.get("absolute_path");
        String path = request.get("path");
        int parentId = Integer.parseInt(request.get("parent_id"));
        String name = request.get("name");
        System.out.println("Path: " + path + "\nparentID: " + parentId + "\nname:" + name);
        fileInfoService.createNewFile(userId, path, absolutePath, parentId, name);
        return ResponseEntity.ok().body(Collections.singletonMap("success", true));
    }

    /**
     * 新建文件夹
     */
    @PostMapping("create/folder")
    public ResponseEntity<?> craeteFolder(@RequestBody Map<String, String> request) {
        int userId = Integer.parseInt(request.get("user_id"));
        String absolutePath = request.get("absolute_path");
        String path = request.get("path");
        Integer parentId = Integer.parseInt(request.get("parent_id"));
        String name = request.get("name");
        fileInfoService.createNewFolder(userId, path, absolutePath, parentId, name);
        return ResponseEntity.ok().body(Collections.singletonMap("success", true));
    }
}

