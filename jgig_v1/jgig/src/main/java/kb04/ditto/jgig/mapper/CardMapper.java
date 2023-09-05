package kb04.ditto.jgig.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kb04.ditto.jgig.entity.CardDto;

@Mapper
public interface CardMapper {
	
	@Select("select * from card")
	public List<CardDto> list(); //모든 리스트 출력.
	
	@Insert("insert into card (CD_NUM,CD_ITEM,CD_PW,CD_NAME,CD_SSN,CD_PHONE,CD_STATUS,PAY_BANK,PAY_ACCOUNT,PAY_DATE,START_DATE,END_DATE,MEM_ID)"
			+ "VALUES(CARD_NUM_SEQ.NEXTVAL,#{cardDto.cd_item},#{cardDto.cd_pw},#{cardDto.cd_name},#{cardDto.cd_ssn},#{cardDto.cd_phone},'Y',#{cardDto.pay_bank},#{cardDto.pay_account},#{cardDto.pay_date},SYSDATE,add_months(sysdate,+12),#{cardDto.mem_id})")
	public int insert(@Param("cardDto") final CardDto cardDto); //카드 발급 insert
	
	@Select("select * from card where mem_id=#{mem_id} AND start_date=(select MAX(start_date) from card)")
	public CardDto find_last(@Param("mem_id") final String mem_id); //최근 발급한 카드 정보 조회
	
	
}
