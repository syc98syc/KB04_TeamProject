package kb04.ditto.jgig.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kb04.ditto.jgig.entity.AccountDto;
import kb04.ditto.jgig.entity.TransferDto;
import kb04.ditto.jgig.mapper.TransferMapper;

@Controller
public class TransferController {
	@Autowired
	TransferMapper transferMapper;
	
	@GetMapping("jgig/transfer_form")
	public String transfer_form(@RequestParam("account") long account, Model model) {
		AccountDto accountDto = transferMapper.findByAccount(account);
		model.addAttribute("dto", accountDto);
		return "transfer/transfer_form";
	}
	@PostMapping("jgig/transfer_form2")
	public String transfer_form_action(TransferDto transferDto, Model model, @RequestParam("act_password") int act_password) {
		int ActPassword = transferMapper.findByActPassword(transferDto.getAccount());
		if(ActPassword != act_password) {
			model.addAttribute("errorMessage", "비밀번호가 맞지 않습니다.");
			return "redirect:/jgig/transfer_form?account="+transferDto.getAccount();
		}
		model.addAttribute("dto", transferDto);
		return "transfer/transfer_form2";
	}
	
	@PostMapping("jgig/transfer_action")
	public String transfer_action(TransferDto transferDto, Model model) {
		transferMapper.insert(transferDto);
		transferMapper.update(transferDto);
		model.addAttribute("dto", transferDto);
		model.addAttribute("msg", "이체가 완료되었습니다.");
		return "transfer/transfer_ok";
	}
	
}
