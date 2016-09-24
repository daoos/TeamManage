package com;

import java.security.MessageDigest;

public class Encode {
	public String encode(String str, String algorithm) {
		if (str == null) {
			return null;
		}
		StringBuilder sb = new StringBuilder();								
		try {
			MessageDigest code = MessageDigest.getInstance(algorithm);		
			code.update(str.getBytes());									//��Ҫ������Ϣ�е������ֽ��ṩ���ö���
			byte[] bs = code.digest();										//����digest���������ϢժҪ�ļ��㣬�����ֽ��������ʽ������ϢժҪ
		
			for (int i = 0; i < bs.length; i++) {
				int v = bs[i] & 0xFF;
				if (v < 16) {
					sb.append(0);
				}
				sb.append(Integer.toHexString(v));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sb.toString().toUpperCase();									//�����ܺ���ַ����е�Ӣ����ĸת��Ϊ��д
	}
	
	public String encodeByMD5(String str){
		return encode(str,"MD5");
	}
}
