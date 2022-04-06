package com.polypay.sailing.config;


import com.polypay.sailing.handler.AbstractVerificationHandler;
import com.polypay.sailing.handler.SmsNumberVerificationHandler;
import com.polypay.sailing.sms.qcloud.QCloudSmsService;
import com.polypay.sailing.store.VerificationStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Configuration
public class BusinessConfig {

	@Autowired
	private VerificationStore verificationStore;

	@Autowired
	private QCloudSmsService qCloudSmsService;

	@Bean
	public SmsNumberVerificationHandler smsNumberVerificationHandler() {
		SmsNumberVerificationHandler smsNumberVerificationHandler = new SmsNumberVerificationHandler("sms", 6);
		smsNumberVerificationHandler.setVerificationStore(verificationStore);
		smsNumberVerificationHandler.setSmsService(qCloudSmsService);
		return smsNumberVerificationHandler;
	}

	@Bean
	public Map<String, AbstractVerificationHandler> verificationHandlerMap() {
		List<AbstractVerificationHandler> verificationHandlerList = new ArrayList<>();
		verificationHandlerList.add(smsNumberVerificationHandler());

		Map<String, AbstractVerificationHandler> verificationHandlerMap = new HashMap<>();
		for (AbstractVerificationHandler handler : verificationHandlerList) {
			verificationHandlerMap.put(handler.getName(), handler);
		}
		return verificationHandlerMap;
	}

}
