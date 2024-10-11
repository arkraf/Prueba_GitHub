/*borrado de tablas*/
 -- drop database Pokedex;

/*creación*/
create database if not exists Pokedex;
use Pokedex;

create table if not exists pokemon(
    pokemonID int(5) AUTO_INCREMENT,
    pokeName varchar(25)NOT NULL,
    /*
    pokeType_1 varchar(10)NOT NULL,
    pokeType_2 varchar(10),
    skill_1 varchar(25)NOT NULL,
    skill_2 varchar(25),
    hiddenSkill varchar(25),
    */
    height float(10) NOT NULL,
    weight float(10) NOT NULL,
    generation int(2),
    /*
    eggGroup varchar(20),
    evolution varchar(25),
    pre_evolution varchar(25),
    mega_evolution varchar(25),
    */
    CONSTRAINT PK_pokemonID PRIMARY KEY (pokemonID)
);

create table if not exists pokeType(
	typeID int(2) auto_increment,
    typeName varchar(10)NOT NULL,
    pokemonID int(5),
    CONSTRAINT PK_typeID PRIMARY KEY (typeID),
    CONSTRAINT FK_pokemonID FOREIGN KEY (pokemonID) REFERENCES pokemon (pokemonID)
);

/*tabla de estadisticas*/
CREATE TABLE  if not exists stats(
    hp_base int(3),
	atk_base int(3),
    def_base int(3),
    spAtk_base int(3),
    spDef_base int(3),
    spe_base int(3),
    pokemonID int(5)
);
create table if not exists pokeSkill(
	skillID int(5) NOT NULL,
    skillName varchar(25)NOT NULL,
    skillDesc text,
    pokemonID int(5),
    CONSTRAINT PK_skillID PRIMARY KEY (skillID),
    CONSTRAINT FK_pokemonID FOREIGN KEY (pokemonID) REFERENCES pokemon (pokemonID)
);

create table  if not exists pokeMoves(
	moveID int(5) auto_increment PRIMARY KEY,
    moveName varchar(25)NOT NULL,
    mtype varchar(25)NOT NULL,
	potencia int(3),
    accuracy int(3),
    CONSTRAINT PK_MoveID PRIMARY KEY(moveID)
);

/*Tabla de tipo de movimientos*/
CREATE TABLE if not exists moveType(
	moveTypeID int(2)
);

create table  if not exists eggGroup(
	eggGroupID int(5) NOT NULL,
    eggGroupName varchar(25)NOT NULL,
    pokemonID int(5),
	CONSTRAINT PK_eggGroupID PRIMARY KEY (eggGroupID),
    CONSTRAINT FK_pokemonID FOREIGN KEY (pokemonID) REFERENCES pokemon (pokemonID)
);

/*Tipos Pokemon*/
INSERT INTO pokeType values('','Grass');
INSERT INTO pokeType values('','Fire');
INSERT INTO pokeType values('','Water');
INSERT INTO pokeType values('','Normal');
INSERT INTO pokeType values('','Electric');
INSERT INTO pokeType values('','Poison');
INSERT INTO pokeType values('','Fighting');
INSERT INTO pokeType values('','Flying');
INSERT INTO pokeType values('','Rock');
INSERT INTO pokeType values('','Ground');
INSERT INTO pokeType values('','Psychic');
INSERT INTO pokeType values('','Bug');
INSERT INTO pokeType values('','Ghost');
INSERT INTO pokeType values('','Ice');
INSERT INTO pokeType values('','Dragon');
INSERT INTO pokeType values('','Dark');
INSERT INTO pokeType values('','Steel');
INSERT INTO pokeType values('','Fairy');

 
select * from pokemon;
select * from pokeSkill;
select * from pokeType;