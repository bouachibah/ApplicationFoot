package com.ma.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ma.doa.EquipeRepository;
import com.ma.entities.Equipe;

@Controller
public class MainController {
	
	@Autowired //injection des dependances
	private EquipeRepository equipeRepository;
	@GetMapping("/equipes")
  public String getAllEquipe(Model model){
	  equipeRepository.findAll();
	  List<Equipe>lesequipes= equipeRepository.findAll();
	  model.addAttribute("lesequipes",lesequipes);
	  return "listEquipe";
	  
  }
	
  @PostMapping("/save")
   public Equipe saveEquipe(Equipe equipe) {
	   equipeRepository.save(equipe);
	   return equipe;
   }
}
