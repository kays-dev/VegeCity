//
//  Groupes.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import Foundation

let botanix = Membre(pseudo: "Botanix_Paris", image: "Botanix_Paris", description: "Botaniste amateur, chasseur de plantes sauvages urbaines")
let rosesLuxo = Membre(pseudo: "RosesDuLuxo", image: "RosesDuLuxo", description: "Passionnée de roses anciennes, Luxembourg ma 2e maison")
let composteur = Membre(pseudo: "ComposteurDu19", image: "ComposteurDu19", description: "Compostage partagé Buttes-Chaumont, bénévole depuis 3 ans")
let jardinier = Membre(pseudo: "JardinierRêveur", image: "JardinierReveur", description: "Retraité du 14e, Montsouris tous les matins depuis 2010")
let pousse = Membre(pseudo: "PousseVerte75", image: "PousseVerte75", description: "Jardinière balcon 11e, tomates et basilic toute l'année")
let miel = Membre(pseudo: "MielDeBercy", image: "MielDeBercy", description: "Apiculteur urbain, 4 ruches en toiture 12e arr.")
let balcon = Membre(pseudo: "BalconFleuriBIS", image: "BalconFleuriBIS", description: "DIY végétal, tutoriels jardinage balcon en ligne")
let mosseur = Membre(pseudo: "LeMosseur", image: "LeMosseur", description: "Mousse urbaine, guerrilla gardening, murs végétaux")
let urban = Membre(pseudo: "UrbanFarmer_75", image: "UrbanFarmer_75", description: "Agriculture urbaine, ruches, potagers partagés")
let vigne = Membre(pseudo: "VigneDeParisPC", image: "VigneDeParisPC", description: "Bénévole vendange Bercy et Belleville chaque automne")
let buttes = Membre(pseudo: "ButtesEnFleurs", image: "ButtesEnFleurs", description: "Animatrice nature 19e, sorties botaniques le dimanche")
let fougeres = Membre(pseudo: "FougèresDAuteuil", image: "FougeresDAuteuil", description: "Passionné de botanique tropicale, abonné aux Serres d'Auteuil")
let grainedepluie = Membre(pseudo: "GrainesDePluie", image: "GrainesDePluie", description: "Collecte eaux de pluie, jardinage 0 déchet, 17e")
let nocturnesauvage = Membre(pseudo: "NocturneSauvage", image: "NocturneSauvage", description: "Photographe de flore nocturne, Buttes-Chaumont à l'aube")
let chlorophylle = Membre(pseudo: "Chlorophylle13", image: "Chlorophylle13", description: "Habitante du 13e, amie des insectes et des mauvaises herbes")
let silence = Membre(pseudo: "SilenceVégétal", image: "SilenceVegetal", description: "Habitante du 13e, amie des insectes et des mauvaises herbes")
let petitceituriste = Membre(pseudo: "PetitCeituriste", image: "PetitCeituriste", description: "Fan de la Petite Ceinture et des friches fleuries")
let canalvert = Membre(pseudo: "CanalVert10", image: "CanalVert10", description: "Riverain du canal, jardin communautaire Villemin")
let planetteverte = Membre(pseudo: "PlanetteVerte", image: "PlanetteVerte", description: "Écolière en terminale, projet végétalisation cour d'école")

let membres = [botanix, rosesLuxo, composteur, jardinier, pousse, miel, balcon, mosseur, urban, vigne, buttes, fougeres, grainedepluie, nocturnesauvage, chlorophylle, silence, petitceituriste, canalvert, planetteverte]

let utilisateur = Membre(pseudo: "TerreNourricière", image: "TerreNourriciere", description: "Permaculture, semences anciennes, ateliers gratuits")

//Instances du Groupe 1
let groupe1 = Groupe(activite: activité1, membres: [pousse, planetteverte, balcon, utilisateur], messages: [
    
    Message(membre: utilisateur, detail: "Bonjour ! Petite question avant le désherbage de samedi : avec la sécheresse de cet été, certaines de mes plantes ont vraiment souffert. Vous avez adapté les variétés du potager ?", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 08, hour: 08, minute: 42)),
    
    Message(membre: pousse, detail: "Oui, depuis deux ans on privilégie des variétés anciennes locales plus résistantes au stress hydrique. La tomate 'Cornue des Andes' et la courge 'Musquée de Provence' ont très bien passé l'été.", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 08, hour: 08, minute: 58)),
    
    Message(membre: balcon, detail: "Pareil pour moi côté balcon. J'ai aussi commencé à pailler beaucoup plus tôt dans la saison, ça retient vraiment l'humidité et ça réduit les arrosages de moitié.", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 08, hour: 09, minute: 15)),
    
    Message(membre: planetteverte, detail: "Dans mon cours d'écologie on a parlé des îlots de chaleur urbains. Est-ce que le potager peut vraiment avoir un effet sur la température autour du square ?", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 08, hour: 09, minute: 32)),
    
    Message(membre: pousse, detail: "Absolument ! La transpiration des plantes refroidit l'air ambiant. C'est mesurable : jusqu'à 3-4°C de moins autour d'un espace végétalisé dense par rapport au béton environnant.", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 08, hour: 09, minute: 50)),
    
    Message(membre: utilisateur, detail: "On devrait documenter ça avec un petit capteur de température. Ça donnerait des données concrètes pour convaincre la mairie d'étendre les jardins partagés dans le 3e.", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 08, hour: 10, minute: 08)),
    
    Message(membre: balcon, detail: "Super idée ! J'ai un ami qui fait ça dans son jardin de Montreuil, je lui demande quel matériel il utilise. Et pour samedi je ramène des semences de variétés sèche-résistantes à partager 🌱", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 08, hour: 10, minute: 25)),
    
    Message(membre: planetteverte, detail: "Je note tout pour mon projet scolaire sur l'agriculture urbaine face au changement climatique. Ce jardin est vraiment un cas d'étude parfait !", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 08, hour: 10, minute: 40)),
])

//Instances du Groupe 2
let groupe2 = Groupe(activite: activite2, membres: [pousse, chlorophylle, jardinier, utilisateur], messages: [

    Message(membre: utilisateur, detail: "Je viens de découvrir ce square et je suis bluffée. En pleine Butte-aux-Cailles, au milieu d'un quartier très dense et minéral, on sent vraiment une différence de température ici. C'est frappant.", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 11, hour: 10, minute: 05)),
    
    Message(membre: chlorophylle, detail: "C'est l'effet îlot de fraîcheur du petit espace végétalisé. Même un square de quelques centaines de m² peut baisser la température de 2-3°C dans la rue adjacente si la végétation est dense.", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 11, hour: 10, minute: 22)),
    
    Message(membre: pousse, detail: "Et ici la gestion différenciée laisse pousser des plantes spontanées qui sont souvent mieux adaptées au microclimat local que des plantations exogènes. La vipérine et la valériane que tu vois là se gèrent toutes seules.", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 11, hour: 10, minute: 40)),
    
    Message(membre: utilisateur, detail: "J'ai lu que la Butte-aux-Cailles est un des quartiers de Paris les plus vulnérables aux îlots de chaleur à cause du tissu urbain très dense. Ce square est donc encore plus précieux qu'ailleurs.", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 11, hour: 10, minute: 58)),
    
    Message(membre: jardinier, detail: "Exactement. J'habite le 13e depuis 30 ans. Les étés d'avant on supportait. Maintenant sans les squares et les quelques arbres de rue, certaines rues sont irrespirables en juillet. On a besoin de plus.", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 11, hour: 11, minute: 15)),
    
    Message(membre: chlorophylle, detail: "C'est d'ailleurs un argument pour un inventaire botanique ici : documenter les espèces sauvages qui prospèrent dans ce microclimat pourrait guider le choix d'espèces pour de futurs aménagements du 13e.", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 11, hour: 11, minute: 35)),
    
    Message(membre: utilisateur, detail: "J'adore cette idée ! Un inventaire participatif un dimanche matin, avec contribution à Tela Botanica, pour montrer que même un petit square en zone dense abrite une biodiversité résiliente.", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 11, hour: 11, minute: 52)),
    
    Message(membre: jardinier, detail: "Et si on proposait aussi des petites plantations supplémentaires d'espèces locales sèche-résistantes ? Avec le réchauffement, mieux vaut choisir maintenant ce qui tiendra dans 20 ans 🌿", dateEnvoi: DateComponents(timeZone: .autoupdatingCurrent, year: 2026, month: 06, day: 11, hour: 12, minute: 10))
])

var groupes = [
    groupe1,
    groupe2
]

//Jours
func getFrenchDay(format : String) -> String {
    
    switch format {
    case "Mon" :
        return "Lun"
    case "Tue" :
        return "Mar"
    case "Wed" :
        return "Mer"
    case "Thu" :
        return "Jeu"
    case "Fri" :
        return "Ven"
    case "Sat" :
        return "Sam"
    case "Sun" :
        return "Dim"
        
    default:
        return " "
    }
}
