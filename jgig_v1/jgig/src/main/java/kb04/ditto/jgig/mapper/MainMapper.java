package kb04.ditto.jgig.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kb04.ditto.jgig.entity.BoardDto;
import kb04.ditto.jgig.entity.MemberDto;
import kb04.ditto.jgig.entity.NoticeDto;

@Mapper
public interface MainMapper {
	
	@Select("select * from(select * from board where BRD_CATEGORY='자유' order by BRD_DATE_CREATED desc) where rownum<=7")
	public List<BoardDto> free_list();
	
	@Select("select * from(select * from board where BRD_CATEGORY='질문' order by BRD_DATE_CREATED desc) where rownum<=7")
	public List<BoardDto> question_list();
	
	@Select("select * from(select * from notice order by NTC_DATE_CREATED desc) where rownum<=7")
	public List<NoticeDto> notice_list();
	
	@Select("SELECT nickname,score FROM (SELECT RANK() OVER (ORDER BY score DESC) AS ranking, nickname, score FROM member)WHERE ranking <= 10")
	public List<MemberDto> point_rank();
	
	

}
