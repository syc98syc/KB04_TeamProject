package kb04.ditto.jgig.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kb04.ditto.jgig.entity.CardDto;

@Mapper
public interface CardMapper {
	
	@Select("select * from card")
	public List<CardDto> list();
	
}
