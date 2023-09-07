package kb04.ditto.jgig.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kb04.ditto.jgig.entity.AccountDto;

@Mapper
public interface AccountMapper {
	@Select("select account, act_name, balance from account where mem_id = #{mem_id} order by account")
	public List<AccountDto> list(String mem_id);
	
	@Insert("insert into Account(account, act_name, act_password, balance, regdate, mem_nm, ssn, phone_num, job, pur_trans, sor_fund, mem_id) values(account_seq.nextval, #{act_name}, "
			+ "#{act_password}, 0, sysdate, #{mem_nm}, #{ssn}, #{phone_num}, #{job}, #{pur_trans}, #{sor_fund}, #{mem_id})")
	public int insert(AccountDto dto);
	
	@Select("select account from account where mem_nm = #{mem_nm} and rownum = 1 order by account desc ")
	public long account_num(AccountDto dto);
	
	@Select("select act_name, account, regdate, balance, act_password from account where account = #{account}")
	public AccountDto findByAccount(long account);
	
	@Select("select mem_nm from member where mem_id = #{mem_id}")
	public String findById(String mem_id);
	
	@Update("update account set act_password = #{act_password} where account = #{account}")
	public void update(AccountDto dto);
	
	@Delete("delete from account where account = #{account}")
	public void terminate(AccountDto dto);
}
