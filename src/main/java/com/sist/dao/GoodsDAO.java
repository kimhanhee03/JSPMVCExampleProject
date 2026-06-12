package com.sist.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.vo.GoodsVO;

import java.io.*;
/*
<select id="goodsListData" resultType="GoodsVO" parameterType="hashmap">
		SELECT no,post,name
		FROM ${table}
		ORDER BY no ASC
		OFFSET #{start} ROWS FETCH NEXT 12 ROWS ONLY
	</select>
	<select id="goodsTotalPage" parameterMap="int" parameterType="hashmap">
		SELECT CEIL(COUNT(*)/12.0) FROM ${table}
	</select>
 */
public class GoodsDAO {
	private static SqlSessionFactory ssf;
	static
	{
		try
		{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	public static List<GoodsVO> goodsListData(Map map)
	{
		SqlSession session=ssf.openSession();
		List<GoodsVO> list=session.selectList("goodsListData",map);
		session.close();
		return list;
	}
	public static int goodsTotalPage(Map map)
	{
		SqlSession session=ssf.openSession();
		int total=session.selectOne("goodsTotalPage",map);
		session.close();
		return total;
	}
	public static GoodsVO goodsDetailData(Map map)
	{
		SqlSession session=ssf.openSession(true);
		
		
		session.update("hitIncrement",map);
		GoodsVO vo=session.selectOne("goodsDetailData",map);
		session.close();
		return vo;
	}
}

