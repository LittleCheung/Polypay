package com.shanjupay.operationapp.controller;

import com.shanjupay.common.domain.PageVO;
import com.shanjupay.merchant.api.MerchantService;
import com.shanjupay.merchant.api.dto.MerchantDTO;
import com.shanjupay.merchant.api.dto.MerchantQueryDTO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.dubbo.config.annotation.Reference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@Api(value = "运营平台-企业管理审核", tags = "企业管理审核", description = "企业管理审核")
@RestController
public class MerchantController {

	@Reference
	private MerchantService merchantService;

	@ApiOperation("商户列表")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "merchantQuery", value = "商户查询条件", dataType = "MerchantQueryDTO", paramType = "body"),
			@ApiImplicitParam(name = "pageNo", value = "页码", required = true, dataType = "int", paramType = "query"),
			@ApiImplicitParam(name = "pageSize", value = "每页记录数", required = true, dataType = "int", paramType = "query")})
	@PostMapping("/m/merchants/page")
	public PageVO<MerchantDTO> queryMerchant(@RequestBody MerchantQueryDTO merchantQuery, @RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return merchantService.queryMerchantPage(merchantQuery,pageNo,pageSize);
	}

	@ApiOperation("根据id商户获取商户信息")
	@ApiImplicitParam(name = "id", value = "商户id", required = true, dataType = "Long", paramType = "query")
	@GetMapping("/m/merchants")
	public MerchantDTO getMerchant(@RequestParam Long id) {
		return merchantService.queryMerchantById(id);
	}

	@ApiOperation("商户资质申请审核")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "merchantId", value = "某个商户id", required = true, dataType = "Long", paramType = "query"),
			@ApiImplicitParam(name = "auditStatus", value = "审核状态 2-审核通过,3-审核拒绝", required = true, dataType = "int", paramType = "path")
	})
	@PostMapping("/m/merchants/audit/{auditStatus}")
	public void auditMerchant(@RequestParam Long merchantId, @PathVariable String auditStatus){
		//根据传入的商户标识，进行审核
		merchantService.verifyMerchant(merchantId, auditStatus);
	}

}
