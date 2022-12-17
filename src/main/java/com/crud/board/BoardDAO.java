package com.crud.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

//import java.sql.ResultSet;
//import java.sql.SQLException;
import java.util.List;


@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo) {
        return sqlSession.insert("Board.insertBoard", vo);
    }

    public int updateBoard(BoardVO vo) {
        return sqlSession.update("Board.updateBoard", vo);
    }

    public int deleteBoard(int seq) {
        return sqlSession.delete("Board.deleteBoard", seq);
    }

    public BoardVO getBoard(int seq) {
        return sqlSession.selectOne("Board.getBoard", seq);
    }

    public List<BoardVO> getBoardList() {
        return sqlSession.selectList("Board.getBoardList");
    }
//    @Autowired
//    private JdbcTemplate jdbcTemplate;
//
//    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
//        this.jdbcTemplate = jdbcTemplate;
//    }
//
//    private final String BOARD_INSERT = "insert into BOARD (title, writer, content) values (?,?,?)";
//    private final String BOARD_UPDATE = "update BOARD set title=?, writer=?, content=? where seq=?";
//    private final String BOARD_DELETE = "delete from BOARD  where seq=?";
//    private final String BOARD_GET = "select * from BOARD  where seq=?";
//    private final String BOARD_LIST = "select * from BOARD order by seq desc";
//
//    public int insertBoard(BoardVO vo) {
//
//        return jdbcTemplate.update(BOARD_INSERT, vo.getTitle(), vo.getWriter(), vo.getContent());
//    }
//
//    public int deleteBoard(int seq) {
//        String sql = "delete from BOARD  where seq=" + seq;
//        return jdbcTemplate.update(sql);
//    }
//
//    public int updateBoard(BoardVO vo) {
//        return jdbcTemplate.update(BOARD_UPDATE, vo.getTitle(), vo.getWriter(), vo.getContent(), vo.getSeq());
//    }
//
//    class BoardRowMapper implements RowMapper<BoardVO>{
//        @Override
//        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
//            BoardVO board = new BoardVO();
//            board.setSeq(rs.getInt("seq"));
//            board.setTitle(rs.getString("title"));
//            board.setWriter(rs.getString("writer"));
//            board.setContent(rs.getString("content"));
//            return board;
//        }
//    }
//
//    public BoardVO getBoard(int seq) {
//        return jdbcTemplate.queryForObject(BOARD_GET, new BoardRowMapper(), seq);
//    }
//
//    public List<BoardVO> getBoardList() {
//        return jdbcTemplate.query(BOARD_LIST, new BoardRowMapper());
//    }
}
