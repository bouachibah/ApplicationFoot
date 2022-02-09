package com.ma.doa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ma.entities.Joueur;

public  interface JoueurRepository extends JpaRepository<Joueur, Long>{
 
}
