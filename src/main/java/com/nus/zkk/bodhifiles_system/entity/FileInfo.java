package com.nus.zkk.bodhifiles_system.entity;

import com.baomidou.mybatisplus.annotation.IdType;

import java.io.Serial;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 文件资源表
 * </p>
 *
 * @author jojo
 * @since 2024-10-16
 */
@Getter
@Setter
@ApiModel(value = "File_info对象", description = "文件资源表")
public class FileInfo implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户id")
    private Integer userId;

    @ApiModelProperty(value = "文件或文件夹名称")
    private String name;

    private Integer parentId;

    @ApiModelProperty(value = "类型是文件或文件夹")
    private String type;

    @ApiModelProperty(value = "资源路径")
    private String url;

    @ApiModelProperty(value = "后缀名")
    private String suffix;

    @ApiModelProperty(value = "当前子文件夹的索引")
    private Integer curChild;

    @ApiModelProperty(value = "偏移量")
    private Integer offset;

    @ApiModelProperty(value = "是否为MarkDown文件")
    private Boolean isMd;

    @ApiModelProperty(value = "是否图片")
    private Boolean isImg;

    @ApiModelProperty(value = "是否目录")
    private Boolean isDir;

    @ApiModelProperty(value = "尺寸")
    private Integer size;

    @ApiModelProperty(value = "上传时间")
    private Date putTime;

    @ApiModelProperty(value = "创建人")
    private String createdBy;

    @ApiModelProperty(value = "创建时间")
    private Date createdTime;

    @ApiModelProperty(value = "更新人")
    private String updatedBy;

    @ApiModelProperty(value = "更新时间")
    private Date updatedTime;

    @ApiModelProperty(value = "来源")
    private String source;

    @ApiModelProperty(value = "文件或文件夹的路径")
    private String path;

    @ApiModelProperty(value = "文件或文件夹的绝对路径")
    private String absolutePath;
}
