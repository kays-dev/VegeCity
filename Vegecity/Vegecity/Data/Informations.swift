//
//  Informations.swift
//  Vegecity
//
//  Created by Apprenant174 on 13/06/2026.
//

import Foundation

var informations = [
    Information(titre: "Échanger avec une communauté de jardiniers amateurs et experts", source: "Au Jardin", type: forum, problematiques: [jardinage, biodiversite], resume: "Forum très actif dédié au jardinage sous toutes ses formes : potager, ornement, taille, compostage, espaces verts.", description: """
        Au Jardin est l'un des plus anciens et plus actifs forums francophones consacrés au jardinage. La communauté compte plusieurs centaines de milliers de messages classés par sous-thèmes : potager, fruitiers, ornement, taille, maladies des plantes, compostage et entretien des espaces verts.

        L'intérêt principal est la rapidité de réponse : poser une question sur une maladie de tomate ou un problème de sol obtient généralement plusieurs retours de jardiniers expérimentés en quelques heures. Le forum dispose aussi d'une base de fiches techniques par plante, rédigées collectivement au fil des années.

        Pour un usage lié à la végétalisation urbaine, les sections sur le jardinage en pot, sur balcon et sur les petits espaces sont particulièrement utiles, de même que les retours d'expérience sur la gestion de la sécheresse en ville.
        """, link: "https://www.aujardin.org/"),
    
    Information(titre: "Réseau collaboratif de botanistes francophones amateurs et professionnels", source: "Tela Botanica", type: forum, problematiques: [jardinage, biodiversite, choixEspece], resume: "Plateforme d'échange, de projets participatifs et de bases de données botaniques libres. MOOC gratuits disponibles.", description: """
        Tela Botanica est un réseau de botanistes francophones réunissant amateurs passionnés et chercheurs professionnels. La plateforme héberge plusieurs projets de sciences participatives, dont des programmes de cartographie de la flore spontanée en milieu urbain.

        Elle propose également des MOOC gratuits sur la botanique, l'identification des plantes et la flore locale, ainsi qu'un forum d'identification où l'on peut soumettre des photos de plantes inconnues pour obtenir une validation par des botanistes confirmés.

        Pour la végétalisation urbaine, le réseau est particulièrement utile pour documenter les espèces spontanées dans les friches, squares et corridors écologiques, et pour contribuer à des inventaires participatifs avec une validation scientifique.
        """, link: "https://www.tela-botanica.org/"),
    
    Information(titre: "Palmarès & données sur les villes les plus vertes de France", source: "Observatoire des villes vertes", type: forum, problematiques: [ilotsChaleur, biodiversite], resume: "Classement annuel des villes françaises selon leur niveau de végétalisation avec indicateurs et retours d'expérience.", description: """
        L'Observatoire des villes vertes publie chaque année un palmarès comparant les grandes villes françaises sur leur niveau de végétalisation : surface d'espaces verts par habitant, budget alloué aux espaces verts, présence d'arbres d'alignement, et initiatives de végétalisation participative.

        Le palmarès s'accompagne de fiches par ville détaillant les politiques menées, avec des focus sur les dispositifs innovants (permis de végétaliser, chartes de gestion écologique, plans canopée). Paris y figure régulièrement, avec des données précises sur l'évolution de sa surface végétalisée.

        Cette ressource est utile pour situer les initiatives parisiennes dans un contexte national, comparer les approches d'autres villes face aux îlots de chaleur, et identifier des modèles transposables.
        """, link: "https://www.observatoirevillesvertes.fr/le-palmares-des-villes-vertes-de-france/"),
    
    Information(titre: "Sélectionner les bonnes espèces d'arbres selon les services rendus en ville", source: "SÉSAME – Cerema", type: guide, problematiques: [choixEspece, ilotsChaleur, secheresse, biodiversite], resume: "Outil du Cerema identifiant 85 espèces d'arbres et arbustes adaptées à un projet de végétalisation selon les services écosystémiques.", description: """
        SÉSAME (Sélection d'Essences pour la nAture en Milieu urbain et périurbain) est un outil développé par le Cerema permettant de sélectionner des essences d'arbres et arbustes parmi 85 espèces référencées, en fonction des services écosystémiques recherchés.

        Les critères incluent la tolérance à la sécheresse, la capacité à rafraîchir l'air par évapotranspiration, l'intérêt pour les pollinisateurs, la résistance aux maladies, et la compatibilité avec les évolutions climatiques projetées pour différentes régions françaises à horizon 2050.

        C'est un outil de référence pour tout projet de plantation urbaine, qu'il s'agisse d'un alignement d'arbres, d'une micro-forêt ou du choix d'espèces pour un parc. Plusieurs des espaces végétalisés parisiens documentés s'appuient explicitement sur ce type de sélection.
        """, link: "https://sesame.cerema.fr/"),
    
    Information(titre: "Simuler et concevoir un projet de rafraîchissement urbain par le végétal", source: "Plus fraîche ma ville", type: guide, problematiques: [ilotsChaleur, secheresse, biodiversite], resume: "Outil interactif pour simuler l'impact de solutions de végétalisation sur la chaleur urbaine.", description: """
        Plus fraîche ma ville est un outil interactif destiné aux collectivités et porteurs de projet souhaitant simuler l'impact de différentes solutions de rafraîchissement urbain : végétalisation de rues, désimperméabilisation, création de fontaines ou de points d'eau, ombrage par arbres.

        L'outil permet de tester virtuellement plusieurs scénarios sur une rue ou un quartier type, et d'obtenir une estimation de la baisse de température ressentie selon les aménagements choisis, accompagnée de retours d'expérience de villes ayant déjà mis en œuvre ces solutions.

        Il constitue une bonne porte d'entrée pour comprendre concrètement comment des espaces comme Clichy-Batignolles ou la micro-forêt du périphérique parviennent à abaisser localement la température de plusieurs degrés en période de canicule.
        """, link: "https://plusfraichemaville.fr/"),
    
    Information(titre: "20 retours d'expérience concrets pour végétaliser et rafraîchir sa ville", source: "ADEME", type: guide, problematiques: [ilotsChaleur, secheresse, inondations], resume: "Guide ADEME présentant 20 projets de revégétalisation urbaine à travers la France, avec fiches détaillées par type d'aménagement.", description: """
        Ce guide de l'ADEME compile vingt retours d'expérience de projets de végétalisation menés dans des villes françaises de tailles variées. Chaque fiche présente le contexte initial, les aménagements réalisés (toitures végétalisées, noues paysagères, parcs sur friches, désimperméabilisation de cours d'écoles), le coût approximatif, et les effets mesurés sur la température et la gestion de l'eau.

        Le guide est structuré pour permettre une lecture par type d'aménagement, ce qui facilite la recherche d'exemples comparables à un projet en cours de réflexion. Il inclut également des points de vigilance issus de l'expérience de terrain : entretien nécessaire, choix d'espèces, acceptabilité sociale.

        C'est une référence solide pour quiconque souhaite argumenter auprès d'une collectivité en faveur d'un projet de végétalisation, en s'appuyant sur des exemples chiffrés plutôt que des principes généraux.
        """, link: "https://librairie.ademe.fr/changement-climatique/20-vegetaliser-agir-pour-le-rafraichissement-urbain-9791029715655.html"),
    
    Information(titre: "Choisir des espèces locales et végétaliser pour la biodiversité et le climat", source: "Biodiversité Centre-Val de Loire", type: guide, problematiques: [biodiversite, choixEspece, jardinage], resume: "Boîte à outils en 4 chapitres : réglementation, espèces indigènes, chantiers de plantation, entretien.", description: """
        Cette boîte à outils régionale est structurée en quatre chapitres complémentaires : le cadre réglementaire de la végétalisation (autorisations, servitudes, chartes locales), la sélection d'espèces indigènes adaptées au climat régional, les bonnes pratiques de chantier pour les plantations (période, préparation du sol, protection des jeunes plants), et l'entretien à long terme en gestion différenciée.

        Bien que centrée sur la région Centre-Val de Loire, la méthodologie et les principes généraux sont directement transposables à un contexte parisien, notamment sur le choix d'espèces indigènes pour les corridors écologiques et les friches réappropriées.

        Le chapitre sur l'entretien en gestion différenciée est particulièrement utile pour comprendre comment des espaces comme le square de la Butte-aux-Cailles parviennent à favoriser la flore spontanée sans intervention lourde.
        """, link: "https://www.biodiversite-centrevaldeloire.fr/actualites/vegetaliser-pour-la-biodiversite-et-le-climat-les-guides-pratiques"),
    
    Information(titre: "Centre de ressources techniques sur les espaces verts et la nature en ville", source: "Plante & Cité", type: guide, problematiques: [jardinage, ilotsChaleur, biodiversite], resume: "Base documentaire professionnelle (bulletins, études, guides) sur la gestion écologique des espaces paysagers urbains.", description: """
        Plante & Cité est un centre technique national dédié aux espaces verts et au paysage, qui met à disposition une base documentaire conséquente : études techniques, bulletins de veille, guides de gestion écologique et retours d'expérience de collectivités.

        Les thématiques couvertes incluent la gestion différenciée, la lutte biologique contre les ravageurs, l'adaptation des espaces verts au changement climatique, et l'évaluation des services rendus par la végétation urbaine (rafraîchissement, biodiversité, bien-être).

        C'est une ressource plutôt orientée professionnels (jardiniers municipaux, paysagistes, services espaces verts), mais accessible à toute personne souhaitant approfondir les aspects techniques de la gestion d'un espace végétalisé, par exemple pour documenter un dossier de proposition auprès
        """, link: "https://www.ressources.plante-et-cite.fr/"),
    
    Information(titre: "Réduire le risque inondation grâce aux solutions naturelles de rétention d'eau", source: "Office Français de la Biodiversité (OFB)", type: guide, problematiques: [inondations, crues, biodiversite], resume: "Portail OFB sur la gestion naturelle des crues : haies, zones humides, mesures de rétention. 10 retours d'expérience et webinaires.", description: """
        Ce portail de l'Office Français de la Biodiversité présente les solutions fondées sur la nature pour réduire le risque d'inondation : restauration de zones humides, plantation de haies pour ralentir le ruissellement, désimperméabilisation de sols et création de bassins de rétention paysagers.

        Dix retours d'expérience documentés montrent l'application concrète de ces solutions dans différents contextes français, avec des données chiffrées sur la réduction des volumes ruisselés. Des replays de webinaires techniques approfondissent certains aspects pour les professionnels.

        Cette ressource éclaire directement le fonctionnement de parcs parisiens conçus avec des bassins de rétention intégrés, comme Clichy-Batignolles, ou le rôle joué par les sols forestiers de la micro-forêt Miyawaki dans l'absorption des eaux de pluie.
        """, link: "https://professionnels.ofb.fr/fr/node/1459"),
    
    Information(titre: "Identifier n'importe quelle plante sauvage par photo", source: "Pl@ntNet (CIRAD / INRAE / INRIA)", type: application, problematiques: [jardinage, choixEspece], resume: "Application de reconnaissance botanique par IA et sciences participatives. Gratuite, sans pub, base collaborative validée par des scientifiques.", description: """
        Pl@ntNet est une application de reconnaissance de plantes développée par un consortium d'instituts de recherche français (CIRAD, INRAE, INRIA, IRD, CNRS). Il suffit de prendre une photo d'une feuille, fleur, fruit ou écorce pour obtenir une identification avec un score de confiance et des espèces proches proposées en alternative.

        L'application est entièrement gratuite, sans publicité, et fonctionne hors ligne pour les flores déjà téléchargées. Chaque observation peut être partagée avec la communauté, ce qui alimente une base de données mondiale utilisée par les chercheurs pour suivre la répartition des espèces.

        En contexte urbain, Pl@ntNet est particulièrement adapté pour identifier la flore spontanée des friches, trottoirs et espaces en gestion différenciée, et pour documenter la biodiversité végétale d'un quartier au fil des saisons.


        """, link: "https://apps.apple.com/fr/app/plantnet/id600547573PlantNet"),
    
 Information(titre: "Trouver et identifier des plantes adaptées à son jardin ou à la ville", source: "Floriscope", type: application, problematiques: [jardinage, choixEspece, ilotsChaleur], resume: "Base de données de végétaux avec moteur de recherche par critères (sol, exposition, usage…). Outil partenaire de SÉSAME.", description: """
        Floriscope est une base de données de végétaux consultable via un moteur de recherche par critères : type de sol, exposition (ombre, mi-ombre, plein soleil), besoin en eau, usage (haie, couvre-sol, grimpante, arbre d'ornement) et résistance au froid ou à la chaleur.

        L'outil permet de croiser plusieurs critères simultanément pour obtenir une liste d'espèces correspondant précisément à un contexte donné, avec fiches descriptives illustrées pour chaque plante proposée.

        Pour des projets de végétalisation urbaine, Floriscope aide à sélectionner des espèces résistantes à la sécheresse ou supportant la chaleur réfléchie par le bâti, en complément d'outils plus institutionnels comme SÉSAME du Cerema.
        """, link: "https://apps.apple.com/fr/app/floriscope/id1438866492Floriscope"),
    
 Information(titre: "Connaître les restrictions d'arrosage et les gestes eau en temps réel", source: "VigiEau – Gouvernement", type: application, problematiques: [secheresse, jardinage], resume: "Plateforme gouvernementale pour connaître les niveaux de restriction sécheresse par commune et les éco-gestes pour les jardins.", description: """
        VigiEau est le service public de référence pour connaître en temps réel le niveau de restriction d'eau en vigueur dans une commune donnée, en fonction des arrêtés sécheresse préfectoraux : vigilance, alerte, alerte renforcée ou crise.

        Pour chaque niveau, la plateforme détaille les usages autorisés ou interdits, notamment pour l'arrosage des jardins, le remplissage des bassins et le lavage des extérieurs. Des éco-gestes adaptés sont proposés selon le profil de l'utilisateur (particulier, agriculteur, collectivité).

        Cette ressource est essentielle pour planifier l'arrosage d'un potager partagé ou d'un balcon en période de sécheresse, et pour anticiper les restrictions lors de la conception de nouveaux espaces végétalisés nécessitant un arrosage régulier.


        """, link: "https://vigieau.gouv.fr"),
    
 Information(titre: "Suivre les alertes de crues en temps réel sur les cours d'eau français", source: "Vigicrues – Ministère de la Transition écologique", type: application, problematiques: [crues, inondations], resume: "Service public officiel de vigilance des crues. Suit 23 000 km de rivières, carte interactive et alertes personnalisées sur mobile.", description: """
        Vigicrues est le service officiel de prévision et de vigilance des crues pour les principaux cours d'eau français, soit environ 23 000 km surveillés en continu. La carte interactive affiche un niveau de vigilance par tronçon (vert, jaune, orange, rouge) actualisé plusieurs fois par jour.

        L'application mobile permet de configurer des alertes personnalisées pour les tronçons surveillés à proximité d'un lieu donné, avec un historique des crues passées consultable pour chaque station.

        Pour les espaces végétalisés situés en bord de Seine ou de canal, comme le parc de Bercy ou le jardin Villemin, cet outil permet d'anticiper les périodes de hautes eaux et de comprendre le rôle que peuvent jouer la végétation et les sols perméables dans l'absorption des crues.
        """, link: "https://apps.apple.com/fr/app/vigicrues/id1637404689Vigicrues"),
    
    Information(titre: "Comprendre les plantes médicinales et leurs bienfaits sur la santé", source: "Éd. ALPEN, 2003", type: livre, problematiques: [jardinage], resume: "Introduction grand public aux vertus thérapeutiques des plantes. Utile pour comprendre le lien entre botanique et bien-être.", description: """
        Cet ouvrage propose une introduction accessible aux plantes médicinales les plus courantes, organisée par grandes familles de troubles (digestifs, respiratoires, cutanés, sommeil) avec pour chaque plante une description, ses usages traditionnels et des précautions d'emploi.

        Bien que publié en 2003, le contenu reste pertinent pour qui souhaite comprendre les bases de la phytothérapie avant d'approfondir avec des sources plus récentes, notamment pour identifier des plantes à intégrer dans un jardin partagé à vocation à la fois ornementale et utilitaire.

        Sans lien numérique disponible, cet ouvrage se trouve généralement en bibliothèque ou en occasion. Il complète utilement une approche plus pratique du jardinage en apportant un éclairage sur les usages historiques des plantes cultivées.
        """, link: ""),
    
    Information(titre: "Plus de 450 plantes supportant la sécheresse pour tous types de jardins", source: "Aurélien Davroux – Éd. Ulmer, 2020", type: livre, problematiques: [jardinage, secheresse], resume: "Guide pratique listant 450+ variétés résistantes au manque d'eau, avec conseils de culture et de gestion de l'arrosage.", description: """
        Ce guide pratique recense plus de 450 espèces et variétés végétales reconnues pour leur résistance à la sécheresse, organisées par usage : massifs ornementaux, haies, couvre-sols, potager. Pour chaque plante, l'auteur détaille les besoins en eau réels, la rusticité et les associations végétales recommandées.

        L'ouvrage consacre également plusieurs chapitres aux techniques de jardinage économes en eau : paillage, choix de l'exposition, amélioration de la structure du sol pour favoriser la rétention d'humidité, et calendrier d'arrosage adapté aux périodes de restriction.

        Particulièrement utile pour des jardins partagés ou des plantations en pleine terre soumis aux restrictions d'arrosage estivales, ce livre permet d'anticiper les choix de plantation pour limiter la dépendance à l'arrosage dès la conception d'un espace.
        """, link: ""),
    
    Information(titre: "Maîtriser toutes les techniques du potager bio, des semis à la conservation", source: "Jean-Paul Thorez & Christian Boué — Éd. Terre Vivante, 2013", type: livre, problematiques: [jardinage, biodiversite], resume: "Guide de référence (512 p., 500+ illustrations) couvrant 100 légumes, aromatiques et petits fruits. Compost, paillage, rotations, engrais verts, 1100+ variétés et recettes de jardiniers. Réédité en 2026.", description: """
        Référence du potager biologique francophone depuis sa première édition, ce guide couvre l'ensemble des techniques nécessaires pour cultiver sans produits chimiques : préparation et amendement du sol, compostage, paillage, rotation des cultures et association de plantes, engrais verts, et gestion naturelle des maladies et ravageurs.

        Plus de 100 légumes, aromatiques et petits fruits sont détaillés individuellement, avec pour chacun le calendrier de semis et de récolte, les variétés recommandées parmi plus de 1 100 référencées, et des conseils de conservation. Le tout est illustré par plus de 500 photos et schémas.

        La nouvelle édition 2026 intègre des mises à jour sur l'adaptation du potager aux épisodes de sécheresse et de chaleur plus fréquents, ce qui en fait une ressource particulièrement pertinente pour les potagers partagés parisiens confrontés à ces enjeux.
        """, link: ""),
    
    Information(titre: "Comprendre l'urgence d'adapter nos villes au changement climatique", source: "Qu'est-ce qu'on fait (QQF)", type: media, problematiques: [ilotsChaleur, inondations, crues, secheresse], resume: "Infographie interactive sur les impacts du changement climatique en ville et les leviers d'adaptation, dont la végétalisation et la gestion de l'eau.", description: """
        Cette infographie interactive du collectif Qu'est-ce qu'on fait synthétise de façon accessible les principaux impacts attendus du changement climatique sur les villes françaises : multiplication des épisodes de canicule, accentuation des îlots de chaleur, sécheresses plus fréquentes, mais aussi épisodes de pluies intenses générant des crues éclair.

        Le contenu présente, pour chaque type d'impact, des leviers d'adaptation déjà mobilisés par des villes françaises, en mettant en avant le rôle de la végétalisation comme réponse transversale à plusieurs de ces enjeux simultanément.

        Format court et visuel, cette ressource est adaptée pour une première sensibilisation ou pour introduire une présentation auprès d'un public non spécialiste sur les liens entre climat, eau et végétation en ville.
        """, link: "https://archives.qqf.fr/infographie/90/changement-climatique-il-y-a-urgence-a-s-adapter"),
    
    Information(titre: "Végétalisation urbaine : repenser la nature en ville au-delà des arbres", source: "Floramedia", type: media, problematiques: [ilotsChaleur, biodiversite, choixEspece], resume: "Article de fond sur les plantes grimpantes, façades végétalisées et solutions alternatives à l'arbre pour espaces denses.", description: """
        Cet article de fond explore les solutions de végétalisation alternatives à la plantation d'arbres, particulièrement pertinentes dans les espaces urbains très denses où l'espace au sol manque : façades végétalisées, plantes grimpantes sur structures légères, murs végétaux modulaires et toitures végétalisées extensives.

        L'article détaille les avantages spécifiques de chaque solution (isolation thermique des bâtiments, réduction du ruissellement, support pour la biodiversité) ainsi que leurs contraintes techniques : poids, arrosage, entretien, choix d'espèces adaptées au support vertical.

        Cette lecture éclaire particulièrement le fonctionnement des murs végétaux de la friche l'Arche Végétale dans le 20e, qui illustre concrètement comment intégrer ce type de solution dans un projet de réappropriation de friche.
        """, link: "https://floramedia.fr/vegetalisation-urbaine-repenser-nature-au-dela-des-arbres/"),
    
    Information(titre: "Comprendre les leviers réglementaires et techniques pour végétaliser sa ville", source: "ADEME – Agir pour la transition", type: procedure, problematiques: [ilotsChaleur, secheresse, inondations, biodiversite], resume: "Page portail ADEME listant outils, financements, formations et retours d'expérience pour une démarche de végétalisation.", description: """
        Cette page portail de l'ADEME centralise les ressources disponibles pour les collectivités souhaitant engager une démarche de végétalisation : dispositifs de financement existants (appels à projets, subventions régionales), formations destinées aux agents techniques, outils d'aide à la décision, et retours d'expérience classés par typologie d'aménagement.

        Elle fonctionne comme un point d'entrée vers d'autres ressources plus spécifiques (guides détaillés, outils de simulation), avec une mise à jour régulière en fonction des dispositifs en cours.

        Utile pour structurer une démarche de proposition auprès d'une mairie d'arrondissement, en identifiant rapidement quels financements ou accompagnements existent pour un type de projet donné (potager partagé, micro-forêt, désimperméabilisation).
        """, link: "https://agirpourlatransition.ademe.fr/collectivites/conseils/adaptation/vegetalisation"),
    
    Information(titre: "Diagnostiquer la surchauffe urbaine et choisir les solutions vertes et bleues adaptées", source: "ADEME – Agir pour la transition", type: procedure, problematiques: [ilotsChaleur, secheresse, inondations], resume: "Guide méthodologique pour comprendre l'effet d'îlot de chaleur et sélectionner les solutions les mieux adaptées.", description: """
        Cette procédure en ligne propose une méthodologie de diagnostic pour identifier les zones les plus exposées aux îlots de chaleur urbains à l'échelle d'un quartier, à partir de critères simples : densité bâtie, présence de surfaces minérales, exposition solaire, proximité d'axes routiers.

        Une fois le diagnostic posé, le guide oriente vers des solutions adaptées au contexte : solutions vertes (végétalisation, plantation d'arbres), solutions bleues (fontaines, gestion de l'eau), ou solutions grises complémentaires (matériaux clairs, ombrières).

        Cette approche en deux temps, diagnostic puis solution, est directement applicable pour évaluer pourquoi un espace comme le square de la Butte-aux-Cailles joue un rôle de refuge thermique dans un quartier par ailleurs très minéral et dense.
        """, link: "https://agirpourlatransition.ademe.fr/collectivites/conseils/adaptation/rafraichissement-urbain"),
    
    Information(titre: "Connaître les restrictions d'eau en vigueur et les gestes à adopter par commune", source: "Info.gouv.fr – Préservons notre ressource en eau", type: procedure, problematiques: [secheresse], resume: "Portail gouvernemental sur la sécheresse : niveaux d'alerte, restrictions pour jardins, FAQ et plan eau en 53 mesures.", description: """
        Ce portail gouvernemental présente le plan eau national en 53 mesures visant à sécuriser la ressource en eau face à l'augmentation de la fréquence des sécheresses. Il détaille les niveaux d'alerte sécheresse par département, les restrictions associées pour les usages domestiques et de jardinage, et une FAQ pratique.

        Les mesures concernant spécifiquement les jardins et espaces verts sont mises en avant : horaires d'arrosage autorisés, interdiction de certains usages en période de crise, dispositifs d'aide à la récupération d'eau de pluie.

        Cette ressource complète VigiEau en offrant une vision plus large des politiques publiques de gestion de l'eau, utile pour comprendre le contexte dans lequel s'inscrivent les restrictions locales rencontrées par les jardins partagés parisiens.
        """, link: "https://www.info.gouv.fr/grand-dossier/preservons-notre-ressource-en-eau/secheresse"),
    
    Information(titre: "Connaître les risques naturels et les zones inondables près de chez soi", source: "Géorisques – Ministère de la Transition écologique", type: procedure, problematiques: [inondations, crues], resume: "Portail officiel du BRGM cartographiant tous les risques naturels en France. Outil de référence pour particuliers et collectivités.", description: """
        Géorisques est le portail de référence pour consulter l'ensemble des risques naturels et technologiques répertoriés en France : zones inondables, risques de mouvement de terrain, exposition aux remontées de nappes phréatiques, et historique des arrêtés de catastrophe naturelle par commune.

        La cartographie interactive permet de zoomer jusqu'à l'adresse pour visualiser les zonages réglementaires applicables, notamment les plans de prévention des risques inondation (PPRI) lorsqu'ils existent.

        Pour des projets de végétalisation en zone potentiellement inondable, comme les espaces en bord de Seine ou de canal, ce portail permet de vérifier les contraintes réglementaires applicables avant d'envisager certains aménagements (plantations, constructions légères).
        """, link: "https://www.georisques.gouv.fr/")
]
