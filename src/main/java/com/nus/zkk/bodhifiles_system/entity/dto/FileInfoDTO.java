package com.nus.zkk.bodhifiles_system.entity.dto;

import lombok.Data;

import java.io.Serial;
import java.io.Serializable;
import java.util.Date;

/**
 * @ author jojo
 * @ date 2024/10/17
 * @ description:用于文件信息的数据传输对象
 */
@Data
public class FileInfoDTO implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;

    private Integer id; // 文件ID
    private Integer userId; // 用户ID
    private Integer parentId; // 父级ID
    private String url; // 资源路径
    private String name; // 资源原始名称
    private String fileName; // 资源名称
    private String suffix; // 后缀名
    private Boolean isImg; // 是否图片
    private Integer size; // 文件大小
    private String type; // 文件展示类型
    private Date putTime; // 上传时间
    private Boolean isDir; // 是否目录
    private String source; // 来源
    private String tenantId; // 租户号
    private Integer revision; // 乐观锁
    private Date createdTime; // 创建时间
    private String updatedBy; // 更新人
    private Date updatedTime; // 更新时间
    private String createdBy; // 创建人

}
