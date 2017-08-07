/**
 * This file created at 2010-8-25.
 *
 * Copyright (c) 2002-2010 Bingosoft, Inc. All rights reserved.
 */
package bingo.sso.server.web;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.support.WebApplicationContextUtils;

import bingo.sso.server.web.spring.PropertyConfigurer;

/**
 * 
 * @author marco
 *
 */
public class WebUtils {
	
	private static PropertyConfigurer propertyConfigurer;
	
	public static final String CONFIG_UI_THEME_NAME  = "sso.ui.theme";
	public static final String CONFIG_UI_VIEW_PATH   = "sso.ui.viewpath";
	
	public static final String getContextPath(HttpServletRequest request){
		String path = request.getContextPath();
		if("/".equals(path)){
			return "";
		}
		return path;
	}

	public static final String getTheme(ServletContext context){
		return (String)getPropertyConfigurer(context).getProperties().get(CONFIG_UI_THEME_NAME);
	}
	
	public static final String getViewPath(ServletContext context){
		return (String)getPropertyConfigurer(context).getProperties().get(CONFIG_UI_VIEW_PATH);
	}

	private static PropertyConfigurer getPropertyConfigurer(ServletContext context){
		if(propertyConfigurer == null){
			propertyConfigurer = WebApplicationContextUtils.getWebApplicationContext(context).getBean(PropertyConfigurer.class);
		}
		return propertyConfigurer; 
	}
}
