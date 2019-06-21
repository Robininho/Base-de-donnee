#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Professeur
#------------------------------------------------------------

CREATE TABLE Professeur(
        id_prof     Int  Auto_increment  NOT NULL ,
        nom_prof    Varchar (50) NOT NULL ,
        prenom_prof Varchar (50) NOT NULL ,
        email       Varchar (250) NOT NULL
	,CONSTRAINT Professeur_PK PRIMARY KEY (id_prof)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Classe
#------------------------------------------------------------

CREATE TABLE Classe(
        id_classe      Int  Auto_increment  NOT NULL ,
        type_de_classe Varchar (20) NOT NULL
	,CONSTRAINT Classe_PK PRIMARY KEY (id_classe)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Eleve
#------------------------------------------------------------

CREATE TABLE Eleve(
        id_eleve     Int  Auto_increment  NOT NULL ,
        nom_eleve    Varchar (50) NOT NULL ,
        prenom_eleve Varchar (50) NOT NULL ,
        note_eleve   Int ,
        id_classe    Int NOT NULL ,
        id_prof      Int NOT NULL
	,CONSTRAINT Eleve_PK PRIMARY KEY (id_eleve)

	,CONSTRAINT Eleve_Classe_FK FOREIGN KEY (id_classe) REFERENCES Classe(id_classe)
	,CONSTRAINT Eleve_Professeur0_FK FOREIGN KEY (id_prof) REFERENCES Professeur(id_prof)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Matiere
#------------------------------------------------------------

CREATE TABLE Matiere(
        id_matiere         Int  Auto_increment  NOT NULL ,
        type_de_la_matiere Varchar (50) NOT NULL
	,CONSTRAINT Matiere_PK PRIMARY KEY (id_matiere)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Note 
#------------------------------------------------------------

CREATE TABLE Note(
        id_note    Int  Auto_increment  NOT NULL ,
        note_eleve Int NOT NULL ,
        id_eleve   Int NOT NULL ,
        id_matiere Int NOT NULL
	,CONSTRAINT Note_PK PRIMARY KEY (id_note)

	,CONSTRAINT Note_Eleve_FK FOREIGN KEY (id_eleve) REFERENCES Eleve(id_eleve)
	,CONSTRAINT Note_Matiere0_FK FOREIGN KEY (id_matiere) REFERENCES Matiere(id_matiere)
)ENGINE=InnoDB;

