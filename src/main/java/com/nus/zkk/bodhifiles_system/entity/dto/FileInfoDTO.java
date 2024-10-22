package com.nus.zkk.bodhifiles_system.entity.dto;

import io.swagger.models.auth.In;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @ author jojo
 * @ date 2024/10/17
 * @ description:用于文件信息的数据传输对象
 */
@Data
public class FileInfoDTO implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;

    private Integer id;                       // 文件或文件夹的唯一标识符
    private Integer userId;
    private Integer parentId;
    private String name;                      // 文件或文件夹名称
    private String path;                      // 文件或文件夹的路径
    private String absolutePath;              // 文件或文件夹的绝对路径
    private String type;                      // 类型（文件或文件夹）
    private String url;
    private String suffix;
    private Integer curChild;
    private Integer offset;
    private Boolean isMd;                     // 是否为 Markdown 文件
    private Boolean isImg;                    // 是否为图片
    private Boolean isDir;                    // 是否为目录
    private Integer size;                     // 文件大小
    private Date putTime;
    private Date createdTime;
    private Date updatedTime;
    private String createdBy;                 // 创建人
    private String updatedBy;                 // 更新人
    private String source;
    private List<FileInfoDTO> children;      // 子文件或子文件夹列表



}
