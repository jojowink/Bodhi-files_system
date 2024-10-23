package com.nus.zkk.bodhifiles_system.entity.dto;

import io.swagger.models.auth.In;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;

/**
 * @ author jojo
 * @ date 2024/10/23
 * @ description:点击文件后，返回前端文件信息及对应的url的格式
 */
@Data
public class OpenFileDTO implements Serializable{
    @Serial
    private static final long serialVersionUID = 1L;

    private Integer id;
    private String name;
    private String path;
    private String absolutePath;
    private String type;
    private Boolean isMd;
    private Integer offset;
    private Integer curChild;
    private String url;

}
