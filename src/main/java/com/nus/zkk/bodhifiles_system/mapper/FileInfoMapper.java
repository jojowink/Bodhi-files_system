package com.nus.zkk.bodhifiles_system.mapper;

import com.nus.zkk.bodhifiles_system.entity.FileInfo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.nus.zkk.bodhifiles_system.entity.dto.FileInfoDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 文件资源表 Mapper 接口
 * </p>
 *
 * @author jojo
 * @since 2024-10-16
 */
@Mapper
public interface FileInfoMapper extends BaseMapper<FileInfo> {
//    通过user_id查找用户文件
    List<FileInfo> getFilesByUserId(@Param("userId") Integer userId);

}
