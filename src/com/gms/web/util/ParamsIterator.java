package com.gms.web.util;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;
import javax.servlet.http.HttpServletRequest;
public class ParamsIterator {
	public static Map<String,String> execute(HttpServletRequest request){
		Map<String,String> result=new HashMap<>();
		Map<String,String[]> map=request.getParameterMap();
		Set<Entry<String,String[]>> set=map.entrySet();         //맵에 담겨있는 명단을 뽑아내서 set에 넘
		Iterator<Map.Entry<String,String[]>> it= set.iterator();//맵안에있는 엔트리의 결과물조사한게 iterator() 
		String params[]=new String[set.size()];
		System.out.println("set size"+it);
		int i=0;
		while(it.hasNext()){
			Map.Entry<String, String[]> e =it.next();
			params[i]=e.getKey();
			i++;
	}
		for (i = 0; i < params.length; i++) {
			if (map.get(params[i]).length==1) {
				result.put(params[i], map.get(params[i])[0]);
			
				System.out.println("*"+map.get(params[i])[0]);
		}else{
			String temp="";
			for (int j=0; j <map.get(params[i]).length; j++) {
				temp+=map.get(params[i])[j]+",";
				System.out.println("*"+map.get(params[i])[j]);
			}
			result.put(params[i],temp);
		}
		}
		return result;
	}
}
