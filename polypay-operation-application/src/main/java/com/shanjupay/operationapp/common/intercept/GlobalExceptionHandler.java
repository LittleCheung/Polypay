package com.shanjupay.operationapp.common.intercept;


import com.shanjupay.common.domain.BusinessException;
import com.shanjupay.common.domain.CommonErrorCode;
import com.shanjupay.common.domain.RestErrorResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@ControllerAdvice
public class GlobalExceptionHandler {

	private final static Logger LOGGER = LoggerFactory.getLogger(GlobalExceptionHandler.class);


	@ExceptionHandler(value = Exception.class)
	@ResponseBody
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	public RestErrorResponse exceptionGet1(HttpServletRequest req, HttpServletResponse response , Exception e) {
		if (e instanceof BusinessException) {
			BusinessException be = (BusinessException) e;
			if(CommonErrorCode.CUSTOM.equals(be.getErrorCode())){
				return new RestErrorResponse(String.valueOf(be.getErrorCode().getCode()), be.getMessage());
			}else{
				return new RestErrorResponse(String.valueOf(be.getErrorCode().getCode()), be.getErrorCode().getDesc());
			}

		}
		LOGGER.error("【系统异常】{}", e);
		return  new RestErrorResponse(String.valueOf(CommonErrorCode.UNKNOWN.getCode()), CommonErrorCode.UNKNOWN.getDesc()+ ":" + e.getMessage());
	}


}
