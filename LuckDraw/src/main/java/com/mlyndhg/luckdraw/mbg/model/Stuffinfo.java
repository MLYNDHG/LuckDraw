package com.mlyndhg.luckdraw.mbg.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import lombok.Data;

/**
 * stuffinfo
 * @author 
 */
@ApiModel(value="com.mlyndhg.luckdraw.mbg.model.Stuffinfo")
@Data
public class Stuffinfo implements Serializable {
    private Integer sid;

    private String name;

    private String phone;

    private Integer stauts;

    private static final long serialVersionUID = 1L;
}