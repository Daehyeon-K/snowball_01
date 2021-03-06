package com.study.mapper;

import java.util.List;

import com.study.dto.AuthorityDTO;
import com.study.dto.MemDTO;


// Mapper 인터페이스 여기서 xml 과 연동
public interface AdminUserControlMapper {
	// 사용자 리스트 보기
	public List<MemDTO> userList();
	
	// 사용자 회원가입시켜주기
	public int userInsert(MemDTO user);
	
	public int memoInsert(MemDTO user);
	
	// 사용자에게 회원가입시켜주기 전에 권한부터 주기
	public int authInsert(AuthorityDTO auth);
	
	// 사용자가 로그인하기
	public MemDTO login(String mem_id);
}
