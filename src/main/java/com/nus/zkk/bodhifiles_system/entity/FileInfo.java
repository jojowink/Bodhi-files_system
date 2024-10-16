package com.nus.zkk.bodhifiles_system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * <p>
 * 文件资源表
 * </p>
 *
 * @author jojo
 * @since 2024-10-16
 */
@ApiModel(value="File_info对象", description="文件资源表")
public class FileInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "用户id")
    private Integer user_id;

    private Integer parent_id;

    @ApiModelProperty(value = "租户号")
    private String TENANT_ID;

    @ApiModelProperty(value = "乐观锁")
    private Integer REVISION;

    @ApiModelProperty(value = "创建人")
    private String CREATED_BY;

    @ApiModelProperty(value = "创建时间")
    private Date CREATED_TIME;

    @ApiModelProperty(value = "更新人")
    private String UPDATED_BY;

    @ApiModelProperty(value = "更新时间")
    private Date UPDATED_TIME;

    @ApiModelProperty(value = "资源路径")
    private String url;

    @ApiModelProperty(value = "资源原始名称")
    private String name;

    @ApiModelProperty(value = "资源名称")
    private String file_name;

    @ApiModelProperty(value = "后缀名")
    private String suffix;

    @ApiModelProperty(value = "是否图片")
    private Boolean is_img;

    @ApiModelProperty(value = "尺寸")
    private Integer size;

    @ApiModelProperty(value = "文件展示类型，非后缀名")
    private String type;

    @ApiModelProperty(value = "上传时间")
    private Date put_time;

    @ApiModelProperty(value = "是否目录")
    private Boolean is_dir;

    @ApiModelProperty(value = "来源")
    private String source;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getParent_id() {
        return parent_id;
    }

    public void setParent_id(Integer parent_id) {
        this.parent_id = parent_id;
    }

    public String getTENANT_ID() {
        return TENANT_ID;
    }

    public void setTENANT_ID(String TENANT_ID) {
        this.TENANT_ID = TENANT_ID;
    }

    public Integer getREVISION() {
        return REVISION;
    }

    public void setREVISION(Integer REVISION) {
        this.REVISION = REVISION;
    }

    public String getCREATED_BY() {
        return CREATED_BY;
    }

    public void setCREATED_BY(String CREATED_BY) {
        this.CREATED_BY = CREATED_BY;
    }

    public Date getCREATED_TIME() {
        return CREATED_TIME;
    }

    public void setCREATED_TIME(Date CREATED_TIME) {
        this.CREATED_TIME = CREATED_TIME;
    }

    public String getUPDATED_BY() {
        return UPDATED_BY;
    }

    public void setUPDATED_BY(String UPDATED_BY) {
        this.UPDATED_BY = UPDATED_BY;
    }

    public Date getUPDATED_TIME() {
        return UPDATED_TIME;
    }

    public void setUPDATED_TIME(Date UPDATED_TIME) {
        this.UPDATED_TIME = UPDATED_TIME;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public String getSuffix() {
        return suffix;
    }

    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }

    public Boolean getIs_img() {
        return is_img;
    }

    public void setIs_img(Boolean is_img) {
        this.is_img = is_img;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getPut_time() {
        return put_time;
    }

    public void setPut_time(Date put_time) {
        this.put_time = put_time;
    }

    public Boolean getIs_dir() {
        return is_dir;
    }

    public void setIs_dir(Boolean is_dir) {
        this.is_dir = is_dir;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    @Override
    public String toString() {
        return "File_info{" +
        "id=" + id +
        ", user_id=" + user_id +
        ", parent_id=" + parent_id +
        ", TENANT_ID=" + TENANT_ID +
        ", REVISION=" + REVISION +
        ", CREATED_BY=" + CREATED_BY +
        ", CREATED_TIME=" + CREATED_TIME +
        ", UPDATED_BY=" + UPDATED_BY +
        ", UPDATED_TIME=" + UPDATED_TIME +
        ", url=" + url +
        ", name=" + name +
        ", file_name=" + file_name +
        ", suffix=" + suffix +
        ", is_img=" + is_img +
        ", size=" + size +
        ", type=" + type +
        ", put_time=" + put_time +
        ", is_dir=" + is_dir +
        ", source=" + source +
        "}";
    }
}
