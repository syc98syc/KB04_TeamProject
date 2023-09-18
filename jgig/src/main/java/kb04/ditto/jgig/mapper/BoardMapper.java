package kb04.ditto.jgig.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kb04.ditto.jgig.entity.BoardDto;
import kb04.ditto.jgig.entity.Criteria;


@Mapper
public interface BoardMapper {
	@Select("select * from board order by brd_id desc")
	List<BoardDto> list();

	@Insert("insert into board(brd_id,brd_category,title,brd_view,brd_content,BRD_DECLARATION,BRD_SUGGESTION,BRD_DATE_CREATED,MEM_ID)"
			+ " values(brd_seq.nextval,#{brd_category},#{title},0,#{brd_content},0,0,sysdate,#{mem_id})")
	void insert(BoardDto dto);

	@Select("select * from board where brd_id = #{brd_id}")
	public BoardDto findByNo(int no);

	@Update("update board SET brd_category=#{brd_category},title=#{title},brd_content=#{brd_content} where brd_id = #{brd_id}")
	void update(BoardDto dto);
	
	@Update("update board SET brd_view=brd_view + 1 where brd_id = #{brd_id}")
	void updateView(BoardDto dto);

	@Delete("delete from board where brd_id = #{brd_id}")
	public int delete(BoardDto dto);
	
	@Select("select count(*) from board")
	public int getTotal();
	
	@Select("SELECT brd_id, brd_category, title, mem_id, brd_date_created, brd_view FROM (SELECT rownum rnum, brd_id, brd_category, title, mem_id, brd_date_created, brd_view FROM board WHERE rownum <= #{pageNum} * #{amount}) WHERE rnum > (#{pageNum}-1)*#{amount} order by rnum desc")
	List<BoardDto> listWithPaging(Criteria criteria);
	
//	@Select("select * from board where mem_id = #{mem_id}")
//	public BoardDto findByMem_id(String mem_id);
}