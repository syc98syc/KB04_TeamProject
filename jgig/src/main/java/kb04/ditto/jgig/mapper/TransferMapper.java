package kb04.ditto.jgig.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kb04.ditto.jgig.entity.AccountDto;
import kb04.ditto.jgig.entity.TransferDto;

@Mapper
public interface TransferMapper {
	@Select("select act_password from account where account = #{account}")
	public int findByActPassword(long account);
	
	@Insert("insert into transfer(trans_seq, depo_bank, depo_num, receive_nm, send_nm, depo_mon, withdr_mon, trans_date, mem_id, account)"
			+ "values(trans_seq.nextval, #{depo_bank}, #{depo_num}, #{receive_nm}, #{send_nm}, #{depo_mon}, 0, sysdate, #{mem_id}, #{account})")
	public int insert(TransferDto dto);
	
	@Select("select act_name, mem_nm, account, regdate, balance, act_password, mem_id from account where account = #{account}")
	public AccountDto findByAccount(long account);

	@Update("update account set balance = balance - #{depo_mon} where account = #{account}")
	public void update(TransferDto transferDto);
	
	@Select("select * from account where mem_id = #{mem_id}")
	public List<TransferDto> accountList(String mem_id);
	
	@Select("SELECT * FROM transfer WHERE TO_CHAR(trans_date, 'YY/MM') = #{yearMon} AND account = #{account} order by trans_date desc")
	public List<TransferDto> list(long account, String yearMon);
 
	@Select("SELECT * FROM transfer WHERE TO_CHAR(trans_date, 'MM/DD/YYYY') BETWEEN #{startDate} AND #{endDate} AND account = #{account} order by trans_date desc")
	public List<TransferDto> listCalender(String startDate, String endDate, long account);
}