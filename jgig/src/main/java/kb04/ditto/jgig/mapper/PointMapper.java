package kb04.ditto.jgig.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kb04.ditto.jgig.entity.MemberDto;
import kb04.ditto.jgig.entity.PointDto;

@Mapper
public interface PointMapper {
	
	//Point
	@Select("SELECT * FROM POINT")
	void all_point(PointDto dto);
	
	
	@Select("SELECT POINT_SEQ, POINT, POINT_DATE, DIVISION, MEM_ID " +
            "FROM POINT " +
            "WHERE MEM_ID = #{memId} " +
            "ORDER BY POINT_DATE DESC")
    List<PointDto> getPointByMemberId(String memId);
	

	
//	포인트적립시 시퀀스 받기
//	@Insert(" INSERT INTO MEMBER\r\n"
//			+ "            (mem_id, mem_pw, mem_nm, nickname, phone_num, ssn, mem_stat, score, authority)\r\n"
//			+ "        VALUES\r\n"
//			+ "            (mem_id.nextval, #{mem_pw}, #{mem_nm}, #{nickname}, #{phone_num}, #{ssn}, 'y', #{score}, 0)")


//	// Member
//	@Select("SELECT * FROM MEMBER")
//	void member(MemberDto dto);
//
//	// 회원가입
//	@Insert(" INSERT INTO MEMBER\r\n"
//			+ "            (mem_id, mem_pw, mem_nm, nickname, phone_num, ssn, mem_stat, score, authority)\r\n"
//			+ "        VALUES\r\n"
//			+ "            (#{mem_id}, #{mem_pw}, #{mem_nm}, #{nickname}, #{phone_num}, #{ssn}, 'y', #{score}, 0)")
//	void signup(MemberDto dto);
//
//	// 로그인
//	@Select("select * from MEMBER where mem_id = #{mem_id} and mem_pw = #{mem_pw}")
//	MemberDto login(MemberDto dto);
//
//	// 회원정보조회
//	@Select("SELECT * FROM MEMBER where mem_id= #{mem_id}")
//	MemberDto detail(String mem_id);
//
//	// 회원정보 수정
//	@Update("UPDATE MEMBER " 
//	+ "SET mem_nm= #{mem_nm},"
//	+ "phone_num= #{phone_num},"
//	+ "nickname= #{nickname},"
//	+ "mem_pw = #{mem_pw}"
//	+ " WHERE mem_id = #{mem_id}")
//	void update(MemberDto Dto);
//
////시퀀스 설정
////	@Insert(" INSERT INTO MEMBER\r\n"
////			+ "            (mem_id, mem_pw, mem_nm, nickname, phone_num, ssn, mem_stat, score, authority)\r\n"
////			+ "        VALUES\r\n"
////			+ "            (mem_id.nextval, #{mem_pw}, #{mem_nm}, #{nickname}, #{phone_num}, #{ssn}, 'y', #{score}, 0)")
////	@Delete("DELETE FROM MEMBER WHERE mem_id = #{mem_id} AND mem_pw = #{mem_pw}")
////	void delete(@Param("mem_id") String mem_id, @Param("mem_pw") String mem_pw);
////
////	
//	
//	// 회원 탈퇴
//    // 비밀번호 조회
//    @Select("SELECT mem_pw FROM MEMBER WHERE mem_id = #{mem_id}")
//    String getPassword(@Param("mem_id") String mem_id);
//
//    // 회원 삭제
//    @Delete("DELETE FROM MEMBER WHERE mem_id = #{mem_id}")
//    void delete(@Param("mem_id") String mem_id);
//    
//    
////	@Delete("DELETE FROM MEMBER WHERE mem_id = #{mem_id}")
////	void delete(String mem_id);

}