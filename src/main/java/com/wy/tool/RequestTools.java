package com.wy.tool;

import org.apache.commons.fileupload.FileUploadException;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Map;

/**
 * Created by Andrew  on 2016/11/8.
 */
public class RequestTools {
    @Deprecated
    public static  <T> T parseRequest(HttpServletRequest request,Class<T> clazz)throws IllegalAccessException{
        T t= null;
        try {
            t = clazz.newInstance();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        System.out.println(request.getParameterMap());
        Enumeration<String>names=request.getParameterNames();
        Field field=null;
        while (names.hasMoreElements()){
            String name=names.nextElement();
            try {
                field= clazz.getDeclaredField(name);
                System.out.println(name);
                field.setAccessible(true);
                if (field.getType()==int.class||field.getType()==Integer.class){
                    field.set(t,Integer.parseInt(request.getParameter(name)));
                }else {
                    System.out.println(request.getParameter(name));
                    field.set(t,request.getParameter(name));
                }
            } catch (NoSuchFieldException e) {
                System.out.println("存在多余字段");
            }
        }
        return t;
    }

    public static  <T> void parseRequest(HttpServletRequest request,T instance)throws IllegalAccessException{
        System.out.println(request.getParameterMap());
        Enumeration<String>names=request.getParameterNames();
        Field field=null;
        while (names.hasMoreElements()){
            String name=names.nextElement();
            try {
                field= instance.getClass().getDeclaredField(name);
                System.out.println(name);
                field.setAccessible(true);
                if (field.getType()==int.class||field.getType()==Integer.class){
                    field.set(instance,Integer.parseInt(request.getParameter(name)));
                }else if (field.getType()==double.class||field.getType()==Double.class) {
                    field.set(instance,Double.parseDouble(request.getParameter(name)));
                }else if (field.getType()==long.class||field.getType()==Long.class) {
                    field.set(instance,Long.valueOf(request.getParameter(name)));
                }else if (field.getType()==Date.class) {
                    /**
                     * 使用spring DateTimeFormat标注类时间属性的格式
                     */
                    DateTimeFormat annotation=field.getAnnotation(DateTimeFormat.class);
                    String dataPattern=annotation.pattern();
                    if (dataPattern==null||dataPattern.equals("")){
                        dataPattern="yyyy-MM-dd";
                    }
                    SimpleDateFormat simpleDateFormat=new SimpleDateFormat(dataPattern);
                    try {
                        field.set(instance, simpleDateFormat.parse(request.getParameter(name)));
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                }else {
                    field.set(instance,request.getParameter(name));
                }
            } catch (NoSuchFieldException e) {
                System.out.println("存在多余字段");
            }
        }
    }
    public static  <T> Map<String,MultipartFile> parseRequestWithFile(HttpServletRequest request, T instance) throws FileUploadException, IllegalAccessException, UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        Map<String,MultipartFile> map=multipartRequest.getFileMap();

        parseRequest(multipartRequest, instance);

        return map;
    }
//    public void setField()
}
