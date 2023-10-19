package com.loanapp.ebizTradeWebApp.wrapper;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashMap;

public class Utility {
	
	public static LinkedHashMap<String, Object> ConvertObjectToMap(Object obj)
			throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		Class<?> pomclass = obj.getClass();
		pomclass = obj.getClass();
		Method[] methods = obj.getClass().getMethods();

		LinkedHashMap<String, Object> map = new LinkedHashMap<>();
		for (Method m : methods) {
			if (m.getName().startsWith("get") && !m.getName().startsWith("getClass")) {
				Object value = (Object) m.invoke(obj);
				map.put(m.getName().substring(3), (Object) value);
			}
		}
		return map;
	}

}
