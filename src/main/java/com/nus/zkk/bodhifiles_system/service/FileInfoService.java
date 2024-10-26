package com.nus.zkk.bodhifiles_system.service;

import com.nus.zkk.bodhifiles_system.entity.FileInfo;
import com.baomidou.mybatisplus.extension.service.IService;
import com.nus.zkk.bodhifiles_system.entity.dto.FileInfoDTO;
import com.nus.zkk.bodhifiles_system.entity.dto.OpenFileDTO;

import java.util.List;

/**
 * <p>
 * 文件资源表 服务类
 * </p>
 *
 * @author jojo
 * @since 2024-10-16
 */
public interface FileInfoService extends IService<FileInfo> {
    List<FileInfoDTO> getFilesByUserId(Integer userId);

    List<OpenFileDTO> getFileUrlById(Integer id);

    void createNewFile(Integer UserId, String Path, String absolutePath, int parentId, String name);

    void createNewFolder(Integer UserId, String Path, String absolutePath, int parentId, String name);
}
