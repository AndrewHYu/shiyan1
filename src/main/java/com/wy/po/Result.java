package com.wy.po;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

/**
 * Created by Andrew  on 2017/2/22.
 */
public class Result {
    public static final int FAIL=0;

    public static final int SUCCESS=1;

    private int resultCode;

    private JSONObject data = new JSONObject();

    private String errorMSG;

    public String getErrorMSG() {
        return errorMSG;
    }

    public void setErrorMSG(String errorMSG) {
        this.errorMSG = errorMSG;
    }

    public int getResultCode() {
        return resultCode;
    }

    public void setResultCode(int result) {
        this.resultCode = result;
    }

    public JSONObject getData() {
        return data;
    }

    public void setData(JSONObject data) {
        this.data = data;
    }

    public Object put(String key, Object value) {
        return data.put(key, value);
    }
    public String toJSONString(){
        return JSON.toJSONString(this);
    }
}
