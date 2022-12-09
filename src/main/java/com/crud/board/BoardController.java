package com.crud.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

@RequestMapping("/board")
public class BoardController {
    @Autowired
    BoardServiceImpl boardService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String getBoardList(Model model) {
        model.addAttribute("boardList", boardService.getBoardList());
        return "list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addBoardView() {
        return "addpostform";
    }

    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPostOk(BoardVO vo) {
        int i = boardService.insertBoard(vo);
        if(i == 0){
            System.out.println("데이터 추가 실패");
        }
        else
            System.out.println("데이터 추가 성공");
        return "redirect:list";
    }

    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String editBoardView(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("boardVO", boardVO);
        return "editform";
    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editBoardOk(BoardVO vo) {
        int i = boardService.updateBoard(vo);
        if(i == 0){
            System.out.println("데이터 수정 실패");
        }
        else
            System.out.println("데이터 수정 성공");
        return "redirect:list";
    }

    @RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
    public String deleteBoardOk(@PathVariable("id") int id) {
        int i = boardService.deleteBoard(id);
        if(i == 0){
            System.out.println("데이터 삭제 실패");
        }
        else
            System.out.println("데이터 삭제 성공");
        return "redirect:../list";
    }
}