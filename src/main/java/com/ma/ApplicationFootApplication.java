package com.ma;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;


import com.ma.doa.EquipeRepository;
import com.ma.doa.JoueurRepository;
import com.ma.entities.Equipe;
import com.ma.entities.Joueur;

@SpringBootApplication
public class ApplicationFootApplication {

	public static void main(String[] args) {
		SpringApplication.run(ApplicationFootApplication.class, args);
		
		
	}
	/*
	 * @Autowired JoueurRepository joueurRepository;
	 * 
	 * @Bean CommandLineRunner start(JoueurRepository
	 * joueurRepository,EquipeRepository equipeRepository) {
	 * 
	 * return args->{
	 * 
	 * Equipe equipe1=new Equipe(212, "MAROC", "ZAKI"); Equipe equipe2=new
	 * Equipe(033, "FRANCE", "ZIDANE"); Equipe equipe3=new Equipe(213, "CAMEROUNE",
	 * "ROLANDO"); Equipe equipe4=new Equipe(214, "Algerie", "ROLANDO");
	 * equipeRepository.save(equipe1); equipeRepository.save(equipe2);
	 * equipeRepository.save(equipe3); equipeRepository.save(equipe4);
	 * joueurRepository.save(new Joueur(null, "ziache", "hakim", 25,equipe1 ));
	 * joueurRepository.save(new Joueur(null, "MBAPE", "kylian", 26,equipe2 ));
	 * joueurRepository.save(new Joueur(null, "Vincent", " aboubakar", 27,equipe3
	 * ));
	 * 
	 * }; }
	 */

}


