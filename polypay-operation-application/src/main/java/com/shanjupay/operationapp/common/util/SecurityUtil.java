package com.shanjupay.operationapp.common.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.shanjupay.common.util.EncryptUtil;
import com.shanjupay.merchant.api.MerchantService;
import com.shanjupay.merchant.api.dto.MerchantDTO;
import org.springframework.util.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/***
 * 获取当前登录用户信息
 * 前端配置token，后续每次请求并通过Header方式发送至后端
 * 在后端controller中通过SecurityUtil.getUser()方法获取当前登录用户信息
 */
public class SecurityUtil {

	public static LoginUser getUser() {

		/**
		 * token 明文格式
		 * {
		 * 	"mobile": "15011111111",
		 * 	"payload": "{\"1177111672565059586\":{\"resources\":[{\"applicationCode\":\"merchant-platform\",\"appRes\":{\"menu\":[{\"privilegeCode\":\"sj_m_console\",\"sort\":1,\"id\":4,\"title\":\"工作台\",\"applicationCode\":\"merchant-platform\",\"parentId\":1,\"status\":1},{\"privilegeCode\":\"sj_m_app_list\",\"sort\":1,\"id\":12,\"title\":\"应用管理列表\",\"applicationCode\":\"merchant-platform\",\"parentId\":5,\"status\":1},{\"privilegeCode\":\"sj_m_transaction_list\",\"sort\":2,\"id\":13,\"title\":\"应用交易总览\",\"applicationCode\":\"merchant-platform\",\"parentId\":5,\"status\":1},{\"privilegeCode\":\"sj_m_account_check\",\"sort\":3,\"id\":14,\"title\":\"应用财务对账\",\"applicationCode\":\"merchant-platform\",\"parentId\":5,\"status\":1},{\"privilegeCode\":\"sj_m_payment\",\"sort\":4,\"id\":15,\"title\":\"开始支付\",\"applicationCode\":\"merchant-platform\",\"parentId\":5,\"status\":1},{\"privilegeCode\":\"sj_m_account_list\",\"sort\":1,\"id\":16,\"title\":\"账户中心\",\"applicationCode\":\"merchant-platform\",\"parentId\":6,\"status\":1},{\"privilegeCode\":\"sj_m_enterprise_auth\",\"sort\":2,\"id\":17,\"title\":\"企业认证申请\",\"applicationCode\":\"merchant-platform\",\"parentId\":6,\"status\":1},{\"privilegeCode\":\"sj_m_store_list\",\"sort\":1,\"id\":18,\"title\":\"门店管理\",\"applicationCode\":\"merchant-platform\",\"parentId\":7,\"status\":1},{\"privilegeCode\":\"sj_m_staff_list\",\"sort\":2,\"id\":19,\"title\":\"成员管理\",\"applicationCode\":\"merchant-platform\",\"parentId\":7,\"status\":1}]}},{\"applicationCode\":\"operation-platform\",\"appRes\":{\"menu\":[{\"privilegeCode\":\"sj_o_member_list\",\"sort\":1,\"id\":20,\"title\":\"会员管理\",\"applicationCode\":\"operation-platform\",\"parentId\":8,\"status\":1},{\"privilegeCode\":\"sj_o_entreprise_list\",\"sort\":2,\"id\":21,\"title\":\"企业管理\",\"applicationCode\":\"operation-platform\",\"parentId\":8,\"status\":1},{\"privilegeCode\":\"sj_o_audit\",\"sort\":3,\"id\":22,\"title\":\"审核管理\",\"applicationCode\":\"operation-platform\",\"parentId\":8,\"status\":1},{\"privilegeCode\":\"sj_o_service_type\",\"sort\":1,\"id\":23,\"title\":\"服务类型管理\",\"applicationCode\":\"operation-platform\",\"parentId\":9,\"status\":1},{\"privilegeCode\":\"sj_o_account_check\",\"sort\":1,\"id\":24,\"title\":\"往来对账\",\"applicationCode\":\"operation-platform\",\"parentId\":10,\"status\":1}]}}],\"user_authorities\":{\"r_001\":[\"sj_m_console\",\"sj_m_app_list\",\"sj_m_transaction_list\",\"sj_m_account_check\",\"sj_m_payment\",\"sj_m_account_list\",\"sj_m_enterprise_auth\",\"sj_m_store_list\",\"sj_m_staff_list\",\"sj_o_member_list\",\"sj_o_entreprise_list\",\"sj_o_audit\",\"sj_o_service_type\"],\"r_002\":[\"sj_o_account_check\"]}},\"1177112064011063298\":{\"resources\":[{\"applicationCode\":\"merchant-platform\",\"appRes\":{\"menu\":[{\"privilegeCode\":\"sj_m_console\",\"sort\":1,\"id\":4,\"title\":\"工作台\",\"applicationCode\":\"merchant-platform\",\"parentId\":1,\"status\":1},{\"privilegeCode\":\"sj_m_app_list\",\"sort\":1,\"id\":12,\"title\":\"应用管理列表\",\"applicationCode\":\"merchant-platform\",\"parentId\":5,\"status\":1},{\"privilegeCode\":\"sj_m_transaction_list\",\"sort\":2,\"id\":13,\"title\":\"应用交易总览\",\"applicationCode\":\"merchant-platform\",\"parentId\":5,\"status\":1},{\"privilegeCode\":\"sj_m_account_check\",\"sort\":3,\"id\":14,\"title\":\"应用财务对账\",\"applicationCode\":\"merchant-platform\",\"parentId\":5,\"status\":1},{\"privilegeCode\":\"sj_m_payment\",\"sort\":4,\"id\":15,\"title\":\"开始支付\",\"applicationCode\":\"merchant-platform\",\"parentId\":5,\"status\":1},{\"privilegeCode\":\"sj_m_account_list\",\"sort\":1,\"id\":16,\"title\":\"账户中心\",\"applicationCode\":\"merchant-platform\",\"parentId\":6,\"status\":1},{\"privilegeCode\":\"sj_m_enterprise_auth\",\"sort\":2,\"id\":17,\"title\":\"企业认证申请\",\"applicationCode\":\"merchant-platform\",\"parentId\":6,\"status\":1},{\"privilegeCode\":\"sj_m_store_list\",\"sort\":1,\"id\":18,\"title\":\"门店管理\",\"applicationCode\":\"merchant-platform\",\"parentId\":7,\"status\":1},{\"privilegeCode\":\"sj_m_staff_list\",\"sort\":2,\"id\":19,\"title\":\"成员管理\",\"applicationCode\":\"merchant-platform\",\"parentId\":7,\"status\":1}]}},{\"applicationCode\":\"operation-platform\",\"appRes\":{\"menu\":[{\"privilegeCode\":\"sj_o_member_list\",\"sort\":1,\"id\":20,\"title\":\"会员管理\",\"applicationCode\":\"operation-platform\",\"parentId\":8,\"status\":1},{\"privilegeCode\":\"sj_o_entreprise_list\",\"sort\":2,\"id\":21,\"title\":\"企业管理\",\"applicationCode\":\"operation-platform\",\"parentId\":8,\"status\":1},{\"privilegeCode\":\"sj_o_audit\",\"sort\":3,\"id\":22,\"title\":\"审核管理\",\"applicationCode\":\"operation-platform\",\"parentId\":8,\"status\":1},{\"privilegeCode\":\"sj_o_service_type\",\"sort\":1,\"id\":23,\"title\":\"服务类型管理\",\"applicationCode\":\"operation-platform\",\"parentId\":9,\"status\":1},{\"privilegeCode\":\"sj_o_account_check\",\"sort\":1,\"id\":24,\"title\":\"往来对账\",\"applicationCode\":\"operation-platform\",\"parentId\":10,\"status\":1}]}}],\"user_authorities\":{\"r_001\":[\"sj_m_console\",\"sj_m_app_list\",\"sj_m_transaction_list\",\"sj_m_account_check\",\"sj_m_payment\",\"sj_m_account_list\",\"sj_m_enterprise_auth\",\"sj_m_store_list\",\"sj_m_staff_list\",\"sj_o_member_list\",\"sj_o_entreprise_list\",\"sj_o_audit\",\"sj_o_service_type\"],\"r_002\":[\"sj_o_account_check\"]}}}",
		 * 	"client_id": "merchant-platform",
		 * 	"user_name": "sh-1",
		 * 	"merchantId":"1232141425"
		 * }
		 */
		/*HttpServletRequest request = ((ServletRequestAttributes) (RequestContextHolder.currentRequestAttributes())).getRequest();
		String jsonToken = request.getHeader("authorization");
		if(StringUtils.isEmpty(jsonToken) || !jsonToken.startsWith("Bearer ")){
			throw new RuntimeException("token is not as expected");
		}
		jsonToken = jsonToken.substring(7);
		LoginUser user = convertTokenToLoginUser(jsonToken);
		return user;*/


		ServletRequestAttributes servletRequestAttributes = (ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes();

		if (servletRequestAttributes != null) {
			HttpServletRequest request = servletRequestAttributes.getRequest();

			Object jwt = request.getAttribute("jsonToken");
			if (jwt instanceof LoginUser) {
				return (LoginUser) jwt;
			}
		}
		return new LoginUser();
	}

	/**
	 * 转换明文jsonToken为用户对象
	 * @param token
	 * @return
	 */
	public static LoginUser convertTokenToLoginUser(String token) {
		token = EncryptUtil.decodeUTF8StringBase64(token);
		LoginUser user = new LoginUser();
		JSONObject jsonObject = JSON.parseObject(token);
		String payload = jsonObject.getString("payload");
		Map<String, Object> payloadMap = JSON.parseObject(payload, Map.class);
		user.setPayload(payloadMap);
		user.setClientId(jsonObject.getString("client_id"));
		user.setMobile(jsonObject.getString("mobile"));
		user.setUsername(jsonObject.getString("user_name"));
		return user;
	}


	public static void main(String[] args) {
		String jsonToken = "Bearer eyJtZXJjaGFudElkIjoiMTIzMjE0MTQyNSIsIm1vYmlsZSI6IjE1MDExMTExMTExIiwicGF5bG9hZCI6IntcIjExNzcxMTE2NzI1NjUwNTk1ODZcIjp7XCJyZXNvdXJjZXNcIjpbe1wiYXBwbGljYXRpb25Db2RlXCI6XCJtZXJjaGFudC1wbGF0Zm9ybVwiLFwiYXBwUmVzXCI6e1wibWVudVwiOlt7XCJwcml2aWxlZ2VDb2RlXCI6XCJzal9tX2NvbnNvbGVcIixcInNvcnRcIjoxLFwiaWRcIjo0LFwidGl0bGVcIjpcIuW3peS9nOWPsFwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJtZXJjaGFudC1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjoxLFwic3RhdHVzXCI6MX0se1wicHJpdmlsZWdlQ29kZVwiOlwic2pfbV9hcHBfbGlzdFwiLFwic29ydFwiOjEsXCJpZFwiOjEyLFwidGl0bGVcIjpcIuW6lOeUqOeuoeeQhuWIl+ihqFwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJtZXJjaGFudC1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjo1LFwic3RhdHVzXCI6MX0se1wicHJpdmlsZWdlQ29kZVwiOlwic2pfbV90cmFuc2FjdGlvbl9saXN0XCIsXCJzb3J0XCI6MixcImlkXCI6MTMsXCJ0aXRsZVwiOlwi5bqU55So5Lqk5piT5oC76KeIXCIsXCJhcHBsaWNhdGlvbkNvZGVcIjpcIm1lcmNoYW50LXBsYXRmb3JtXCIsXCJwYXJlbnRJZFwiOjUsXCJzdGF0dXNcIjoxfSx7XCJwcml2aWxlZ2VDb2RlXCI6XCJzal9tX2FjY291bnRfY2hlY2tcIixcInNvcnRcIjozLFwiaWRcIjoxNCxcInRpdGxlXCI6XCLlupTnlKjotKLliqHlr7notKZcIixcImFwcGxpY2F0aW9uQ29kZVwiOlwibWVyY2hhbnQtcGxhdGZvcm1cIixcInBhcmVudElkXCI6NSxcInN0YXR1c1wiOjF9LHtcInByaXZpbGVnZUNvZGVcIjpcInNqX21fcGF5bWVudFwiLFwic29ydFwiOjQsXCJpZFwiOjE1LFwidGl0bGVcIjpcIuW8gOWni+aUr+S7mFwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJtZXJjaGFudC1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjo1LFwic3RhdHVzXCI6MX0se1wicHJpdmlsZWdlQ29kZVwiOlwic2pfbV9hY2NvdW50X2xpc3RcIixcInNvcnRcIjoxLFwiaWRcIjoxNixcInRpdGxlXCI6XCLotKbmiLfkuK3lv4NcIixcImFwcGxpY2F0aW9uQ29kZVwiOlwibWVyY2hhbnQtcGxhdGZvcm1cIixcInBhcmVudElkXCI6NixcInN0YXR1c1wiOjF9LHtcInByaXZpbGVnZUNvZGVcIjpcInNqX21fZW50ZXJwcmlzZV9hdXRoXCIsXCJzb3J0XCI6MixcImlkXCI6MTcsXCJ0aXRsZVwiOlwi5LyB5Lia6K6k6K+B55Sz6K+3XCIsXCJhcHBsaWNhdGlvbkNvZGVcIjpcIm1lcmNoYW50LXBsYXRmb3JtXCIsXCJwYXJlbnRJZFwiOjYsXCJzdGF0dXNcIjoxfSx7XCJwcml2aWxlZ2VDb2RlXCI6XCJzal9tX3N0b3JlX2xpc3RcIixcInNvcnRcIjoxLFwiaWRcIjoxOCxcInRpdGxlXCI6XCLpl6jlupfnrqHnkIZcIixcImFwcGxpY2F0aW9uQ29kZVwiOlwibWVyY2hhbnQtcGxhdGZvcm1cIixcInBhcmVudElkXCI6NyxcInN0YXR1c1wiOjF9LHtcInByaXZpbGVnZUNvZGVcIjpcInNqX21fc3RhZmZfbGlzdFwiLFwic29ydFwiOjIsXCJpZFwiOjE5LFwidGl0bGVcIjpcIuaIkOWRmOeuoeeQhlwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJtZXJjaGFudC1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjo3LFwic3RhdHVzXCI6MX1dfX0se1wiYXBwbGljYXRpb25Db2RlXCI6XCJvcGVyYXRpb24tcGxhdGZvcm1cIixcImFwcFJlc1wiOntcIm1lbnVcIjpbe1wicHJpdmlsZWdlQ29kZVwiOlwic2pfb19tZW1iZXJfbGlzdFwiLFwic29ydFwiOjEsXCJpZFwiOjIwLFwidGl0bGVcIjpcIuS8muWRmOeuoeeQhlwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJvcGVyYXRpb24tcGxhdGZvcm1cIixcInBhcmVudElkXCI6OCxcInN0YXR1c1wiOjF9LHtcInByaXZpbGVnZUNvZGVcIjpcInNqX29fZW50cmVwcmlzZV9saXN0XCIsXCJzb3J0XCI6MixcImlkXCI6MjEsXCJ0aXRsZVwiOlwi5LyB5Lia566h55CGXCIsXCJhcHBsaWNhdGlvbkNvZGVcIjpcIm9wZXJhdGlvbi1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjo4LFwic3RhdHVzXCI6MX0se1wicHJpdmlsZWdlQ29kZVwiOlwic2pfb19hdWRpdFwiLFwic29ydFwiOjMsXCJpZFwiOjIyLFwidGl0bGVcIjpcIuWuoeaguOeuoeeQhlwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJvcGVyYXRpb24tcGxhdGZvcm1cIixcInBhcmVudElkXCI6OCxcInN0YXR1c1wiOjF9LHtcInByaXZpbGVnZUNvZGVcIjpcInNqX29fc2VydmljZV90eXBlXCIsXCJzb3J0XCI6MSxcImlkXCI6MjMsXCJ0aXRsZVwiOlwi5pyN5Yqh57G75Z6L566h55CGXCIsXCJhcHBsaWNhdGlvbkNvZGVcIjpcIm9wZXJhdGlvbi1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjo5LFwic3RhdHVzXCI6MX0se1wicHJpdmlsZWdlQ29kZVwiOlwic2pfb19hY2NvdW50X2NoZWNrXCIsXCJzb3J0XCI6MSxcImlkXCI6MjQsXCJ0aXRsZVwiOlwi5b6A5p2l5a+56LSmXCIsXCJhcHBsaWNhdGlvbkNvZGVcIjpcIm9wZXJhdGlvbi1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjoxMCxcInN0YXR1c1wiOjF9XX19XSxcInVzZXJfYXV0aG9yaXRpZXNcIjp7XCJyXzAwMVwiOltcInNqX21fY29uc29sZVwiLFwic2pfbV9hcHBfbGlzdFwiLFwic2pfbV90cmFuc2FjdGlvbl9saXN0XCIsXCJzal9tX2FjY291bnRfY2hlY2tcIixcInNqX21fcGF5bWVudFwiLFwic2pfbV9hY2NvdW50X2xpc3RcIixcInNqX21fZW50ZXJwcmlzZV9hdXRoXCIsXCJzal9tX3N0b3JlX2xpc3RcIixcInNqX21fc3RhZmZfbGlzdFwiLFwic2pfb19tZW1iZXJfbGlzdFwiLFwic2pfb19lbnRyZXByaXNlX2xpc3RcIixcInNqX29fYXVkaXRcIixcInNqX29fc2VydmljZV90eXBlXCJdLFwicl8wMDJcIjpbXCJzal9vX2FjY291bnRfY2hlY2tcIl19fSxcIjExNzcxMTIwNjQwMTEwNjMyOThcIjp7XCJyZXNvdXJjZXNcIjpbe1wiYXBwbGljYXRpb25Db2RlXCI6XCJtZXJjaGFudC1wbGF0Zm9ybVwiLFwiYXBwUmVzXCI6e1wibWVudVwiOlt7XCJwcml2aWxlZ2VDb2RlXCI6XCJzal9tX2NvbnNvbGVcIixcInNvcnRcIjoxLFwiaWRcIjo0LFwidGl0bGVcIjpcIuW3peS9nOWPsFwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJtZXJjaGFudC1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjoxLFwic3RhdHVzXCI6MX0se1wicHJpdmlsZWdlQ29kZVwiOlwic2pfbV9hcHBfbGlzdFwiLFwic29ydFwiOjEsXCJpZFwiOjEyLFwidGl0bGVcIjpcIuW6lOeUqOeuoeeQhuWIl+ihqFwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJtZXJjaGFudC1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjo1LFwic3RhdHVzXCI6MX0se1wicHJpdmlsZWdlQ29kZVwiOlwic2pfbV90cmFuc2FjdGlvbl9saXN0XCIsXCJzb3J0XCI6MixcImlkXCI6MTMsXCJ0aXRsZVwiOlwi5bqU55So5Lqk5piT5oC76KeIXCIsXCJhcHBsaWNhdGlvbkNvZGVcIjpcIm1lcmNoYW50LXBsYXRmb3JtXCIsXCJwYXJlbnRJZFwiOjUsXCJzdGF0dXNcIjoxfSx7XCJwcml2aWxlZ2VDb2RlXCI6XCJzal9tX2FjY291bnRfY2hlY2tcIixcInNvcnRcIjozLFwiaWRcIjoxNCxcInRpdGxlXCI6XCLlupTnlKjotKLliqHlr7notKZcIixcImFwcGxpY2F0aW9uQ29kZVwiOlwibWVyY2hhbnQtcGxhdGZvcm1cIixcInBhcmVudElkXCI6NSxcInN0YXR1c1wiOjF9LHtcInByaXZpbGVnZUNvZGVcIjpcInNqX21fcGF5bWVudFwiLFwic29ydFwiOjQsXCJpZFwiOjE1LFwidGl0bGVcIjpcIuW8gOWni+aUr+S7mFwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJtZXJjaGFudC1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjo1LFwic3RhdHVzXCI6MX0se1wicHJpdmlsZWdlQ29kZVwiOlwic2pfbV9hY2NvdW50X2xpc3RcIixcInNvcnRcIjoxLFwiaWRcIjoxNixcInRpdGxlXCI6XCLotKbmiLfkuK3lv4NcIixcImFwcGxpY2F0aW9uQ29kZVwiOlwibWVyY2hhbnQtcGxhdGZvcm1cIixcInBhcmVudElkXCI6NixcInN0YXR1c1wiOjF9LHtcInByaXZpbGVnZUNvZGVcIjpcInNqX21fZW50ZXJwcmlzZV9hdXRoXCIsXCJzb3J0XCI6MixcImlkXCI6MTcsXCJ0aXRsZVwiOlwi5LyB5Lia6K6k6K+B55Sz6K+3XCIsXCJhcHBsaWNhdGlvbkNvZGVcIjpcIm1lcmNoYW50LXBsYXRmb3JtXCIsXCJwYXJlbnRJZFwiOjYsXCJzdGF0dXNcIjoxfSx7XCJwcml2aWxlZ2VDb2RlXCI6XCJzal9tX3N0b3JlX2xpc3RcIixcInNvcnRcIjoxLFwiaWRcIjoxOCxcInRpdGxlXCI6XCLpl6jlupfnrqHnkIZcIixcImFwcGxpY2F0aW9uQ29kZVwiOlwibWVyY2hhbnQtcGxhdGZvcm1cIixcInBhcmVudElkXCI6NyxcInN0YXR1c1wiOjF9LHtcInByaXZpbGVnZUNvZGVcIjpcInNqX21fc3RhZmZfbGlzdFwiLFwic29ydFwiOjIsXCJpZFwiOjE5LFwidGl0bGVcIjpcIuaIkOWRmOeuoeeQhlwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJtZXJjaGFudC1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjo3LFwic3RhdHVzXCI6MX1dfX0se1wiYXBwbGljYXRpb25Db2RlXCI6XCJvcGVyYXRpb24tcGxhdGZvcm1cIixcImFwcFJlc1wiOntcIm1lbnVcIjpbe1wicHJpdmlsZWdlQ29kZVwiOlwic2pfb19tZW1iZXJfbGlzdFwiLFwic29ydFwiOjEsXCJpZFwiOjIwLFwidGl0bGVcIjpcIuS8muWRmOeuoeeQhlwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJvcGVyYXRpb24tcGxhdGZvcm1cIixcInBhcmVudElkXCI6OCxcInN0YXR1c1wiOjF9LHtcInByaXZpbGVnZUNvZGVcIjpcInNqX29fZW50cmVwcmlzZV9saXN0XCIsXCJzb3J0XCI6MixcImlkXCI6MjEsXCJ0aXRsZVwiOlwi5LyB5Lia566h55CGXCIsXCJhcHBsaWNhdGlvbkNvZGVcIjpcIm9wZXJhdGlvbi1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjo4LFwic3RhdHVzXCI6MX0se1wicHJpdmlsZWdlQ29kZVwiOlwic2pfb19hdWRpdFwiLFwic29ydFwiOjMsXCJpZFwiOjIyLFwidGl0bGVcIjpcIuWuoeaguOeuoeeQhlwiLFwiYXBwbGljYXRpb25Db2RlXCI6XCJvcGVyYXRpb24tcGxhdGZvcm1cIixcInBhcmVudElkXCI6OCxcInN0YXR1c1wiOjF9LHtcInByaXZpbGVnZUNvZGVcIjpcInNqX29fc2VydmljZV90eXBlXCIsXCJzb3J0XCI6MSxcImlkXCI6MjMsXCJ0aXRsZVwiOlwi5pyN5Yqh57G75Z6L566h55CGXCIsXCJhcHBsaWNhdGlvbkNvZGVcIjpcIm9wZXJhdGlvbi1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjo5LFwic3RhdHVzXCI6MX0se1wicHJpdmlsZWdlQ29kZVwiOlwic2pfb19hY2NvdW50X2NoZWNrXCIsXCJzb3J0XCI6MSxcImlkXCI6MjQsXCJ0aXRsZVwiOlwi5b6A5p2l5a+56LSmXCIsXCJhcHBsaWNhdGlvbkNvZGVcIjpcIm9wZXJhdGlvbi1wbGF0Zm9ybVwiLFwicGFyZW50SWRcIjoxMCxcInN0YXR1c1wiOjF9XX19XSxcInVzZXJfYXV0aG9yaXRpZXNcIjp7XCJyXzAwMVwiOltcInNqX21fY29uc29sZVwiLFwic2pfbV9hcHBfbGlzdFwiLFwic2pfbV90cmFuc2FjdGlvbl9saXN0XCIsXCJzal9tX2FjY291bnRfY2hlY2tcIixcInNqX21fcGF5bWVudFwiLFwic2pfbV9hY2NvdW50X2xpc3RcIixcInNqX21fZW50ZXJwcmlzZV9hdXRoXCIsXCJzal9tX3N0b3JlX2xpc3RcIixcInNqX21fc3RhZmZfbGlzdFwiLFwic2pfb19tZW1iZXJfbGlzdFwiLFwic2pfb19lbnRyZXByaXNlX2xpc3RcIixcInNqX29fYXVkaXRcIixcInNqX29fc2VydmljZV90eXBlXCJdLFwicl8wMDJcIjpbXCJzal9vX2FjY291bnRfY2hlY2tcIl19fX0iLCJjbGllbnRfaWQiOiJtZXJjaGFudC1wbGF0Zm9ybSIsInVzZXJfbmFtZSI6InNoLTEifQo=";
		if (StringUtils.isEmpty(jsonToken) || !jsonToken.startsWith("Bearer ")) {
			throw new RuntimeException("token is not as expected");
		}
		jsonToken = jsonToken.substring(7);
		LoginUser user = convertTokenToLoginUser(jsonToken);
		System.out.println(user);
	}

//	public static String getMerchantId(Long tenantId) {
//		HttpServletRequest request = ((ServletRequestAttributes) (RequestContextHolder.currentRequestAttributes()))
//				.getRequest();
//		String jsonToken = request.getHeader("authorization");
//		if (StringUtils.isEmpty(jsonToken) || !jsonToken.startsWith("Bearer ")) {
//			throw new RuntimeException("token is not as expected");
//		}
//		jsonToken = jsonToken.substring(7);
//		jsonToken = EncryptUtil.decodeUTF8StringBase64(jsonToken);
//		JSONObject jsonObject = JSON.parseObject(jsonToken);
//		return jsonObject.getString("merchantId");
//	}

		public static Long getMerchantId(){

			MerchantService merchantService = ApplicationContextHelper.getBean(MerchantService.class);
			MerchantDTO merchant = merchantService.queryMerchantByTenantId(getUser().getTenantId());
			Long merchantId = null;
			if(merchant!=null){
				merchantId = merchant.getId();
			}
			return merchantId;
		}

}
