package kb04.ditto.jgig.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kb04.ditto.jgig.entity.PopularWordDto;
import kb04.ditto.jgig.entity.WaitingDto;

@Mapper
public interface WaitingMapper {
	@Insert("insert into popular_word(pw_word, pw_date, pw_age, mem_id) values (#{pw_word}, sysdate, #{pw_age}, #{mem_id})")
	public int insert(PopularWordDto dto);
	
	@Select("select *\r\n"
			+ "from (\r\n"
			+ "    select pw_word, pw_age, count(pw_word)\r\n"
			+ "    from popular_word\r\n"
			+ "    where pw_age = 20\r\n"
			+ "    group by pw_word, pw_age\r\n"
			+ "    order by count(pw_word) desc\r\n"
			+ ")\r\n"
			+ "where rownum <= 10")
	public List<PopularWordDto> list();
	
	@Select("select *\r\n"
			+ "from (\r\n"
			+ "    select pw_word, pw_age, count(pw_word)\r\n"
			+ "    from popular_word\r\n"
			+ "    group by pw_word, pw_age\r\n"
			+ "    order by count(pw_word) desc\r\n"
			+ ")\r\n"
			+ "where rownum <= 10")
	public List<PopularWordDto> allAgeList();
	
	@Insert("insert into waiting (wt_seq, wt_no, wt_list, wt_date, wt_store, mem_id) \r\n"
			+ "values (wt_seq.NEXTVAL, #{wt_no}, #{wt_list}, sysdate, #{wt_store}, #{mem_id})")
	public void insertWaiting(WaitingDto dto);
	
	@Select("select * \r\n"
			+ "from waiting\r\n"
			+ "where mem_id = #{mem_id}")
	public WaitingDto detailWaiting(String mem_id);
	
	@Delete("delete from waiting where wt_seq = #{wt_seq}")
	public void deleteWaiting(int wt_seq);
}
