package com.ma.entities;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
//pour declarer cette classe est une jpa entity
@Data
// annotation de lombok qui permets de generer le getters et setters
@NoArgsConstructor
//pour generer un const ss arguments
@ToString
//generer une methode to String
public class Equipe {

	public Equipe(long indicatif, String nom_pays, String nom_entraineur, Date dateCreation) {
		super();
		this.indicatif = indicatif;
		this.nom_pays = nom_pays;
		this.nom_entraineur = nom_entraineur;
		this.dateCreation = dateCreation;
	}
	// ici je declare le id comme 
	@Id 
	private long indicatif;
	private String nom_pays;
	@Column(length = 10)
	private String nom_entraineur;
	@Temporal(TemporalType.DATE)
	private Date dateCreation;
	@OneToMany(mappedBy = "equipe",fetch = FetchType.LAZY)
	private List<Joueur> lesJoueurs;
	
}
//une entite JPA=java bean(attribut) +annotation jpa