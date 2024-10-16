package com.nus.zkk.bodhifiles_system.entity.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @ author jojo
 * @ date 2024/10/17
 * @ description:用于文件信息的数据传输对象
 */
@Data
public class FileInfoDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    private Integer id; // 文件ID

    private Integer user_id; // 用户ID

    private Integer parent_id; // 父级ID，用于文件夹结构

    private String TENANT_ID; // 租户号

    private Integer REVISION; // 乐观锁

    private String CREATED_BY; // 创建人

    private Date CREATED_TIME; // 创建时间

    private String UPDATED_BY; // 更新人

    private Date UPDATED_TIME; // 更新时间

    private String url; // 资源路径

    private String name; // 资源原始名称

    private String file_name; // 资源名称

    private String suffix; // 后缀名

    private Boolean is_img; // 是否图片

    private Integer size; // 文件大小

    private String type; // 文件展示类型

    private Date put_time; // 上传时间

    private Boolean is_dir; // 是否目录

    private String source; // 来源

}
