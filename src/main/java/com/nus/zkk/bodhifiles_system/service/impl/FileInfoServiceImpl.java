package com.nus.zkk.bodhifiles_system.service.impl;

import com.nus.zkk.bodhifiles_system.entity.FileInfo;
import com.nus.zkk.bodhifiles_system.entity.dto.FileInfoDTO;
import com.nus.zkk.bodhifiles_system.mapper.FileInfoMapper;
import com.nus.zkk.bodhifiles_system.service.FileInfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
        return fileInfoMapper.getFilesByUserId(userId);
    }
}
