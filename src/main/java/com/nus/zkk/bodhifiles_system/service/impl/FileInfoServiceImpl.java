package com.nus.zkk.bodhifiles_system.service.impl;

import com.nus.zkk.bodhifiles_system.entity.FileInfo;
import com.nus.zkk.bodhifiles_system.entity.dto.FileInfoDTO;
import com.nus.zkk.bodhifiles_system.mapper.FileInfoMapper;
import com.nus.zkk.bodhifiles_system.service.FileInfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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
