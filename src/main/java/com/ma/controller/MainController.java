package com.ma.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ma.doa.EquipeRepository;
import com.ma.doa.JoueurRepository;
import com.ma.entities.Equipe;
import com.ma.entities.Joueur;

@Controller
public class MainController {
	
	@Autowired //injection des dependances
	private EquipeRepository equipeRepository;
	@Autowired //injection des dependances
	private JoueurRepository joueurRepository;
	
	@GetMapping("/equipes")
  public String getAllEquipe(Model model){
	List<Equipe>lesequipes= equipeRepository.findAll();
	  model.addAttribute("lesequipes",lesequipes);
	  return "listEquipe";
	  
  }
	@GetMapping("/joueurs")
	  public String getAllJoueur(Model model){
		List<Joueur>lesjoueurs= joueurRepository.findAll();
		  model.addAttribute("lesjoueurs",lesjoueurs);
		  return "listJoueur";		  
	  }
  @PostMapping("/save")
   public String saveEquipe(Equipe equipe) {
	   equipeRepository.save(equipe);	
	   return "redirect:/equipes";
   }
  
  @PostMapping("/add")
  public String saveJoueur(Joueur joueur) {
	   joueurRepository.save(joueur);	
	   return "redirect:/joueurs";
  }
  
  @GetMapping("/formJoueur")
  public String formJoueur(Model model) {
	  List<Equipe>lesequipes= equipeRepository.findAll();
	  model.addAttribute("lesequipes",lesequipes);
	   return "formJoueur";
  }
  
 //@RequestMapping(value="/form",method = RequestMethod.GET)
  @GetMapping("/form")
  public String form() {
	 	
	   return "formGroupe";
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
	  return "redirect:/equipes";
  }
}
