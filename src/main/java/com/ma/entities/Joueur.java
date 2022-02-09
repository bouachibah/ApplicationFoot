package com.ma.entities;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity 
@Data @AllArgsConstructor @NoArgsConstructor @ToString

public class Joueur implements Serializable {
	//ici je declare le id comme identifiant auto-increment
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long id;
	 private String nom;
	 private String prenom;
	 private int age;
	 @ManyToOne
	 private Equipe equipe;

}
