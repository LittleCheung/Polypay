package com.shanjupay.merchant.api.dto;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@ApiModel(value = "StoreDTO", description = "门店信息")
@Data
public class StoreDTO implements Serializable {

	@ApiModelProperty("门店Id")
	@JsonSerialize(using= ToStringSerializer.class)
	private Long id;

	@ApiModelProperty("门店名称")
	private String storeName;

	@ApiModelProperty("门店地址")
	private String storeAddress;

	@ApiModelProperty("门店编号")
	private Long storeNumber;

	@ApiModelProperty("门店状态")
	private Boolean storeStatus;

	@ApiModelProperty("所属商户")
	@JsonSerialize(using= ToStringSerializer.class)
	private Long merchantId;

	@ApiModelProperty("父门店")
	private Long parentId;

	@ApiModelProperty("门店管理员")
	private List<StaffDTO> staffs;
}
