package com.nus.zkk.bodhifiles_system.service.impl;

import com.nus.zkk.bodhifiles_system.entity.FileInfo;
import com.nus.zkk.bodhifiles_system.entity.dto.FileInfoDTO;
import com.nus.zkk.bodhifiles_system.entity.dto.OpenFileDTO;
import com.nus.zkk.bodhifiles_system.mapper.FileInfoMapper;
import com.nus.zkk.bodhifiles_system.service.FileInfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 文件资源表 服务实现类
 * </p>
 *
 * @author jojo
 * @since 2024-10-16
 */
@Service
public class FileInfoServiceImpl extends ServiceImpl<FileInfoMapper, FileInfo> implements FileInfoService {

    @Autowired
    private FileInfoMapper fileInfoMapper;
    @Override
    public List<FileInfoDTO> getFilesByUserId(Integer userId) {
        List<FileInfo> fileInfoList = fileInfoMapper.getFilesByUserId(userId);

        return buildFileHierarchy(fileInfoList, null);
    }

    @Override
    public List<OpenFileDTO> getFileUrlById(Integer id) {
        List<FileInfo> fileInfos = fileInfoMapper.getFilesById(id);
        return convertToOpenFileDTO(fileInfos);
    }

    /**
     * 打开文件服务的转换DTO格式函数
     * @param fileInfos
     * @return
     */
    private List<OpenFileDTO> convertToOpenFileDTO(List<FileInfo> fileInfos) {
        return fileInfos.stream().map(fileInfo -> {
            OpenFileDTO dto = new OpenFileDTO();
            dto.setId(fileInfo.getId());
            dto.setName(fileInfo.getName());
            dto.setPath(fileInfo.getPath());
            dto.setAbsolutePath(fileInfo.getAbsolutePath());
            dto.setType(fileInfo.getType());
            dto.setIsMd(fileInfo.getIsMd());
            dto.setOffset(fileInfo.getOffset());
            dto.setCurChild(fileInfo.getCurChild());
            dto.setUrl(fileInfo.getUrl());
            return dto;

        }).collect(Collectors.toList());
    }

    /**
     *
     * 构建文件目录层级结构的返回格式
     * @param files
     * @param parentId
     * @return
     */
    private List<FileInfoDTO> buildFileHierarchy(List<FileInfo> files, Integer parentId) {
        List<FileInfoDTO> fileInfoDTOS = new ArrayList<>();

        for (FileInfo file : files) {
            if ((parentId == null && file.getParentId() == null) ||
                    (parentId != null && parentId.equals(file.getParentId()))) {
                FileInfoDTO dto = new FileInfoDTO();
                dto.setId(file.getId());
                dto.setName(file.getName());
                dto.setPath(file.getPath());
                dto.setAbsolutePath(file.getAbsolutePath());
                dto.setType(file.getType());
                dto.setIsMd(file.getIsMd());
                dto.setCurChild(file.getCurChild());
                dto.setOffset(file.getOffset());
                dto.setUserId(file.getUserId());
                dto.setUrl(file.getUrl());
                dto.setSuffix(file.getSuffix());
                dto.setIsImg(file.getIsImg());
                dto.setIsDir(file.getIsDir());
                dto.setSize(file.getSize());
                dto.setPutTime(file.getPutTime());
                dto.setCreatedBy(file.getCreatedBy());
                dto.setUpdatedBy(file.getUpdatedBy());
                dto.setSource(file.getSource());

                List<FileInfoDTO> children = buildFileHierarchy(files, file.getId());
                if (!children.isEmpty()) {
                    dto.setChildren(children);
                }
                fileInfoDTOS.add(dto);
            }
        }
        return fileInfoDTOS;
    }
}
