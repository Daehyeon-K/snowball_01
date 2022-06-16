package com.study.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.study.dto.ApprovalCommitDTO;
import com.study.dto.ApprovalDTO;
import com.study.dto.CriteriaDTO;

public interface ApprovalMapper {
	// 결재 기안, 조회
	//public List<ApprovalDTO> selectAll(CriteriaDTO cri);
	public int insert(ApprovalDTO insertDto);
	public List<ApprovalDTO> select(@Param("cri") CriteriaDTO cri, @Param("mem_id") String mem_id/*, @Param("typeArr") String[] typeArr*/);
	public int totalCnt(@Param("cri") CriteriaDTO cri, @Param("mem_id") String mem_id/*, @Param("typeArr") String[] typeArr*/); //처리할 인자 없으니까
	public ApprovalDTO read(String approval_id);
	public ApprovalCommitDTO commitRead(String approval_commit_id); // 결재 승인 정보 가져오기
	
	// 결재 승인 생성
	public int commit_insert();
	
	// 결재 수신
	public List<ApprovalDTO> commitSelect(@Param("cri") CriteriaDTO cri, @Param("mem_id") String mem_id/*, @Param("typeArr") String[] typeArr*/);
	public int approvalInterCommit(String approval_commit_id);
	public int approvalFinalCommit(String approval_commit_id);
	public int approvalInterReject(@Param("approval_commit_id") String approval_commit_id, @Param("approval_reject") String approval_reject);
	public int approvalFinalReject(@Param("approval_commit_id") String approval_commit_id, @Param("approval_reject") String approval_reject);
}
