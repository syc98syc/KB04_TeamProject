package kb04.ditto.jgig.mapper;

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
}
