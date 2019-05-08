DROP DATABASE IF EXISTS caj;
CREATE DATABASE IF NOT EXISTS caj CHARACTER SET utf8;
set names UTF8;
	/*COLLATE utf8_bin;*/
use caj;
set names UTF8;
/*
CREATE TABLE if not EXISTS audio
(
	id_a int not null primary key auto_increment,
	titre varchar(20) not null,
	chanson varchar(255) not null,
	categorie  varchar(255) not null default 'musique',
	photo varchar(255) not null,
	details text not null, 
	aimer int not null DEFAULT 0,
	download int not null DEFAULT 0,
	play int not null DEFAULT 0,
	id_artiste int not null,
	date_audio timestamp NULL DEFAULT CURRENT_TIMESTAMP
);*/
CREATE TABLE if not EXISTS projects (
	id int not null auto_increment primary key,
	titre varchar(200) not null,
	sous_t varchar(200) not null,
	contenue text not null,
	photo varchar(255) not null,
	date_projects timestamp NULL DEFAULT CURRENT_TIMESTAMP
);
 CREATE TABLE if not EXISTS feedback(
 	id int not null auto_increment primary key,
 	nom_c varchar(200) not null,
	prenom_c varchar(200) not null,
	pays_c varchar(200) not null,
	message_c  text not null,
	mail_c 	varchar(200) not null,				
	civilite_c varchar(200) not null,
	fonction_c varchar(200) not null,
	phone_c varchar(200) not null,
	code_c varchar(200) not null,
	date_f timestamp NULL DEFAULT CURRENT_TIMESTAMP
);

insert into projects (titre,sous_t,contenue,photo) values
	
	("La jeunesse et l'Elite, 1ère Edition.","Initiative de l'organisation Carrefour des jeunes.monde (ULPGL) avec le professeur WASSO MISONA Joseph, le doyen de la faculté de Droit, ULPGL.",
		"Une invitation accordée à toute la jeunesse du Nord-Kivu grâce aux activités de jumelage ayant réuni différentes structures des jeunes notamment des universités, les clubs et associations des jeunes dont le réseau des jeunes congolais pour la lutte contre le SIDA (RACOJ), les Apologues de paix, l’organisation des jeunes pour le changement, Conseil Provincial de la Jeunesse, sous les thèmes :
En quoi se mesure la réussite et Donner plus de sens à ta vie.
Conférence-débat animé par le Professeur WASSO MISONA Joseph, à l’époque Doyen de la Faculté de Droit à l’Université Libre des Pays des Grands-Lacs.    
Projection cinématographique d’un documentaire de jeunes sur la cohabitation et le développement dans le territoire de FIZI et plaine de la Ruzizi (en province du Sud-Kivu, RDC)

","conf1.jpg"),
	/*("QUE T'INSPIRE L'AVENIR !","
Crainte ou espoir?"," 'Plus belle est la médaille, plus lourd sera le revers', disait le chanteur Youssoupha.
Si pour une journée, le soleil impose l’apparition, la lune et les étoiles quant à elles s'emparent de la nuit car, il s'agit juste d'une question de temps. Certes, l'avenir semble être absurde pour nous tous. Face à tout horizon, c'est plutôt de doute que l'on émet réfutant toute forme de fatalité. Nous voulons ainsi opter pour un langage commun. Apprendre à connaitre que l'avenir se fonde sur toute une gamme variée de nos objectifs. cela étant, l'avenir nous doit le bonheur de façon indéniable.
Oui, il est possible d'y arriver si la jeunesse qui, toujours a été considérée comme espoir de tout avenir, apprenait à se défaire du langage égoïste, franchissant toutes barrières liées à l'âge, sexe, race, et appartenance régionale en adoptant de façon commune une politique axée sur des conceptions et analyses objectives des faits et réalités qui caractérisent ses sociétés.
Voici en effet pour vous, carrefour de jeunes, une affaire des jeunes prônant beaucoup plus la conscientisation de la jeunesse, basée sur le discernement assidu, une notion de bonheur pour tous.
","1.jpg"),*/


	("CAMPAGNE DE COLLECTE DE FONDS EN FAVEUR DE L'EDUCATION ET LA SANTE DES ENFANTS DANS LE MASISI EN RDC!",
		"Participer à notre campagne","
	 Cette campagne vise à collecter des fonds en faveur de l’éducation et la santé des enfants et jeunes 
	 victimes et vulnérables des conséquences des guerres dans le  MASISI au Nord-Kivu en République 
	 Démocratique du Congo. Les différents fonds consistent à assurer et promouvoir l’éducation des tous 
	 les enfants en âge préscolaire, de façon à procéder au processus d’adaptation de l’âge scolaire de 9 à 6 ans, 
	 et garantir pour ce faire, l’éducation continue des filles, répondre aux questions urgentes d’hygiène liées à 
	 la disposition d’installation d’eau potable et l’état critique des toilettes dans des écoles, promouvoir
	  l’apprentissage professionnel des jeunes et assurer une alphabétisation généralisée des jeunes, 
	  qu’ils sachent lire et écrire. 

	  La Localité de Ngungu, en Territoire de Masisi est
 Caractérisée par une limite considérable d’investissements de base, destinés à appuyer et accompagner le processus de développement, la localité de Ngungu ne dispose d’aucune école moderne. Toutes les écoles du milieu sont d’ailleurs mal équipées et non construites, soumises continuellement à des problèmes d’hygiène liés à la non disposition d’installation d’eau potable et l’état critique des toilettes dont parfois, une portes de toilette suffit pour couvrir toute une école dont l’effectif s’élève à 303 élèves et 8 enseignements. 
82% des enfants en âge préscolaire n’ont pas accès à l’éducation pour une moyenne de 1 enfant en âge préscolaire par ménage, une situation qui retarde l’âge scolaire qui varie entre 7 et 11 ans pour la première année primaire, avec pour l’âge scolaire moyen 9 ans pour la première année primaire. Ce retard de 3 ans par rapport à l’âge scolaire du pays qui est établi à 6 ans, décourage et constitue un véritable frein à l’éducation des filles dans ce milieu où le mariage précoce constitue une partie intégrante de la culture. 8 filles sur 10 se marient avent de finir leur cycle d’étude secondaire normale. 
L’inexistence des structures de formation  préscolaire justifie également l’inadaptation des élèves destinés à suivre l’école primaire normale et l’effectif sensiblement faible qu’enregistre la totalité des écoles de la localité de Ngungu, dont la moyenne s’élève à 231.2 élèves par école, soit 38.5 élèves par classe, généralement pour des écoles à 6 salles de classe, avec une moyenne de 17.1 filles par classe contre 21.4 en faveur de gerçons. 
L’état de pauvreté qui caractérise une grande partie de la population, qui vit essentiellement de l’agriculture extensive, à des terres louées de fois, ne permet pas à beaucoup de parents d’assurer la scolarité de leurs enfants.    
Pour la localité de NGUNGU, la taille moyenne des ménages correspond à 8.1, soit un nombre moyen de 8.1 personnes par ménage. Cette moyenne est qualifiée d’élevée par rapport à celle qui caractérise les milieux urbains dont le nombre moyen de personnes par ménage correspond à environ 5.7, le cas de la ville de Goma par exemple.  La réalité est telle que, plus la taille de  ménage est élevée, plus les besoins en éducation et la santé des enfants trouvent du mal à être satisfaits.  Seuls les besoins en nourriture et habillement tentent d’être satisfaits au mépris de l’éducation, la santé et le reste. 

","livre.png");

/*
("NOTE DE L'EQUIPE TECHNIQUE MIXTE ET PEDAGOGIQUE","Current research /n17/001/NGUNGU/MASISI","Le temps n’est plus où chacun, de son côté, pouvait éviter le contact, s’enfermer dans sa forteresse, et excommunier l’autre. Aujourd’hui que ça nous plaise ou non, est le temps de la vie commune, du dialogue, voir de l’action commune, sans avoir le droit, ni l’envie de nous renier, ni d’obliger l’autre à se renier.  
 On devra guère se reprocher de l’incapacité de relever le défi sans condamner vivement notre attitude indifférente vis-à-vis de difficultés et dangers qui entravent et excluent nos possibilités de se développer. 
L’action communautaire demeure l’un des instruments capables de promouvoir le développement communautaire, un état de progrès et amélioration des conditions de vie économico-sociales, où les besoins de chaque individu, famille et ménage sont pris en compte entant que membre et unité permanent de la communauté. 


Le développement communautaire, c’est aussi l’exécution d’un ensemble d’actions systématiquement regroupé en projets, des projets adaptés aux besoins réels de la communauté, où des notions des responsabilités sont établies à différentes échelles.
Entant que processus, le développement communautaire nécessite une véritable interaction entre différents composants de la communauté, notamment : les langues, les religions et les cultures de façon à adopter communément des politiques axées sur des faits réalités qui caractérisent la communauté dans son ensemble. 
Etant donné que, de façon logique, la communauté est liée à ses composants par un lien perpétuel, il serait cependant inconcevable d’ignorer l’aspect interactif  et pouvoir espérer un veritable développement communautaire  et durable.
Les mêmes langues, religions et cultures ont caractérisées notre communauté depuis de décennies.  Cette réalité est loin de disparaitre d’ailleurs. 
Il s’avère donc indispensable de compter sur cette diversité de façon à créer un environnement favorable pour tous.
Tout le monde à un rôle prépondérant à jouer dans le processus de développement communautaire. Chaque action compte, surtout quand elle est menée de façon collective. 
Le carrefour des jeunes.monde se présente, en effet, comme une organisation des jeunes dont l’objectif ultime vise à intégrer la jeunesse dans la quête du veritable développement communautaire.  
A travers nos actions plutôt modestes, mais dont l’exécution va devoir prouver de l’efficacité, nous voulons apprendre à créer un  environnement favorable pour tous, en intégrant un maximum de jeunes dans nos programmes de promotion de développement économique. Nous nous proposons d’initier des programmes axés sur trois secteurs que l’on qualifie de bloc prioritaire:
•	Promotion de l’éducation
•	Promotion et autonomisation de la femme
•	Promotion de la santé (communautaire).
L’ensemble des nos actions devrait revêtir de caractères évident, participatif, populaire et interactif, afin de quoi nous sollicitons l’attention et le soutien de chacun de membres et acteurs de développement (autorités administratives, représentations religieuses, leaders d’opinion, groupes et associations des jeunes, etc.).

Anticipant nos remerciements pour votre aimable et bienveillante coopération;
","proetud.jpg"),
*/