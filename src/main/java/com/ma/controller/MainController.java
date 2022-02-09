package com.ma.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
   public String saveEquipe(Equipe equipe) {
	   equipeRepository.save(equipe);	
	   return "form";
   }
	/*
	 * @RequestMapping(value="/update",method=RequestMethod.POST) public String
	 * update(long indicatif,Model model) {
	 * 
	 * Optional<Equipe> equipe= equipeRepository.findById(indicatif);
	 * 
	 * return "equipe"; }
	 */
  
  @RequestMapping(value = "/delete/{indicatif}",method = RequestMethod.GET)
 public String delete(@PathVariable(name="indicatif")long indicatif) { 
	  equipeRepository.deleteById(indicatif);
	   return "redirect:/index";
  }
}
