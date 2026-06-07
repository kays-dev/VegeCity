//
//  Groupes.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import Foundation

//Instances des membres
let membres = [
    Membre(pseudo: "Botanix_Paris", image: "Botanix_Paris", description: "Botaniste amateur, chasseur de plantes sauvages urbaines"),
    Membre(pseudo: "RosesDuLuxo", image: "RosesDuLuxo", description: "Passionnée de roses anciennes, Luxembourg ma 2e maison"),
    Membre(pseudo: "ComposteurDu19", image: "ComposteurDu19", description: "Compostage partagé Buttes-Chaumont, bénévole depuis 3 ans"),
    Membre(pseudo: "JardinierRêveur", image: "JardinierReveur", description: "Retraité du 14e, Montsouris tous les matins depuis 2010"),
    Membre(pseudo: "TerreNourricière", image: "TerreNourriciere", description: "Permaculture, semences anciennes, ateliers gratuits"),
    Membre(pseudo: "MielDeBercy", image: "MielDeBercy", description: "Apiculteur urbain, 4 ruches en toiture 12e arr."),
    Membre(pseudo: "BalconFleuriBIS", image: "BalconFleuriBIS", description: "DIY végétal, tutoriels jardinage balcon en ligne"),
    Membre(pseudo: "LeMosseur", image: "LeMosseur", description: "Mousse urbaine, guerrilla gardening, murs végétaux"),
    Membre(pseudo: "UrbanFarmer_75", image: "UrbanFarmer_75", description: "Agriculture urbaine, ruches, potagers partagés"),
    Membre(pseudo: "VigneDeParisPC", image: "VigneDeParisPC", description: "Bénévole vendange Bercy et Belleville chaque automne"),
    Membre(pseudo: "ButtesEnFleurs", image: "ButtesEnFleurs", description: "Animatrice nature 19e, sorties botaniques le dimanche"),
    Membre(pseudo: "FougèresDAuteuil", image: "FougeresDAuteuil", description: "Passionné de botanique tropicale, abonné aux Serres d'Auteuil"),
    Membre(pseudo: "GrainesDePluie", image: "GrainesDePluie", description: "Collecte eaux de pluie, jardinage 0 déchet, 17e"),
    Membre(pseudo: "NocturneSauvage", image: "NocturneSauvage", description: "Photographe de flore nocturne, Buttes-Chaumont à l'aube"),
    Membre(pseudo: "Chlorophylle13", image: "Chlorophylle13", description: "Habitante du 13e, amie des insectes et des mauvaises herbes"),
    Membre(pseudo: "SilenceVégétal", image: "SilenceVegetal", description: "Habitante du 13e, amie des insectes et des mauvaises herbes"),
    Membre(pseudo: "PetitCeituriste", image: "PetitCeituriste", description: "Fan de la Petite Ceinture et des friches fleuries"),
    Membre(pseudo: "CanalVert10", image: "CanalVert10", description: "Riverain du canal, jardin communautaire Villemin"),
    Membre(pseudo: "PlanetteVerte", image: "PlanetteVerte", description: "Écolière en terminale, projet végétalisation cour d'école")
]

let utilisateur = Membre(pseudo: "PousseVerte75", image: "PousseVerte75", description: "Jardinière balcon 11e, tomates et basilic toute l'année")

//Instances du Groupe 1
let messagesRecusGroupe1 = [
    "Bonjour ! Qui est dispo samedi matin pour le désherbage des allées ? On a laissé un peu trainer depuis la semaine dernière 😅",
    "Moi aussi je viens ! Par contre question pratique : est-ce qu'on peut apporter des graines de notre côté pour les planter dans les parties communes ?",
    "J'ai récupéré des graines de courge butternut et de basilic thaï chez ma grand-mère. Elle jardine depuis 40 ans alors j'imagine que c'est de qualité 😄",
    "Trop bien les graines de famille ! J'ai fait un tuto là-dessus sur mon compte si ça intéresse. Le basilic thaï ça marche super bien même en pot.",
    "Ok donc on se retrouve samedi 9h à l'entrée du jardin. J'apporte le compost que j'ai mis de côté cette semaine, le bac était presque plein."
]

let messagesEnvoyesGroupe1 = [
    "Je peux être là vers 9h. J'amène aussi des semis de tomates cerises que j'ai faits chez moi, il y en a en trop pour mon balcon.",
    "Oui tout à fait, c'est même encouragé ! Le mieux c'est des variétés anciennes non hybrides pour pouvoir les ressemer l'année prochaine. Tu as quoi en tête ? que j'ai faits chez moi, il y en a en trop pour mon balcon.",
    "Parfait. Et on en profite pour repiquer les jeunes plants dans la parcelle A, elle est prête depuis mardi dernier 🌱"
]

let groupe1 = Groupe(activite: activité1, membres: [membres[0], membres[1], membres[2], utilisateur], messagesRecus: messagesRecusGroupe1, messagesEnvoyes: messagesEnvoyesGroupe1)

//Instances du Groupe 1
let messagesRecusGroupe2 = [
    "Les murs végétaux côté périphérique ont bien tenu l'été. Les plantes couvre-murs ont progressé d'un mètre vers le haut depuis le printemps, on va bientôt couvrir toute la façade nord 🌿",
    "Oui tout va bien, j'ai arrosé les parcelles libres les jours de canicule. Par contre la parcelle 7 a besoin d'un tuteurage urgent pour les tomates, elles penchent vraiment.",
    "Je passe demain matin, je tuteure la 7 et j'en profite pour pailler les courgettes. Ça fait 40 ans que je jardine et le paillage estival ça n'a pas de prix pour l'humidité.",
    "Il en reste un gros tas sous le préau, bien fermenté maintenant. C'est même mieux d'attendre quelques semaines pour l'utiliser, exactement comme là.",
    "Super. J'ai aussi une info : un projet de compostage de biodéchets avec le lycée de la Porte de Montreuil est en discussion. Ça donnerait beaucoup de matière organique pour la saison prochaine.",
    "Un partenariat avec un lycée c'est très bien ! On pourrait aussi proposer des ateliers jardinage dans la friche, faire venir les élèves sur le terrain. J'adorerais transmettre tout ça."
]

let messagesEnvoyesGroupe2 = [
    "Excellent ! Et le potager partagé ? Je n'ai pas pu venir depuis 3 semaines, les parcelles sont encore accessibles ?",
    "Merci ! Tu as raison sur le paillage. Est-ce qu'il reste du broyat de l'atelier de taille du mois dernier ou il faudra en ramener ?"
]

let groupe2 = Groupe(activite: activite2, membres: [membres[3], membres[4], membres[5], utilisateur], messagesRecus: messagesRecusGroupe2, messagesEnvoyes: messagesEnvoyesGroupe2)
