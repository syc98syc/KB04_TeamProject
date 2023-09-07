package kb04.ditto.jgig.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kb04.ditto.jgig.entity.PopularWordDto;

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
}
