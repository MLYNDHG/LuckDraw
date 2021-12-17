package com.mlyndhg.luckdraw.mbg.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import lombok.Data;

/**
 * userinfo
 * @author 
 */
@ApiModel(value="com.mlyndhg.luckdraw.mbg.model.Userinfo")
@Data
public class Userinfo implements Serializable {
    private Integer uid;

    private String admin;

    private String password;

    private String nickname;

    private String headimg;

    private static final long serialVersionUID = 1L;
}