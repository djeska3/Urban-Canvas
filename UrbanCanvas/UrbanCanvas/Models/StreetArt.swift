//
//  StreetArt.swift
//  UrbanCanvas
//
//  Created by Apprenant 85 on 03/07/2026.
//

import Foundation
import MapKit

struct StreetArt : Identifiable {
    var id = UUID()
    var photo: String
    var name: String
    var icon: String
    var city: String
    var description: String
    var type: String
    var condition: String
    var date: String
    var author: String
    var localisation: String
    var coordinates : CLLocationCoordinate2D
    
}

var streetarts = [
    StreetArt(photo: "elseed",
              name: "Liberté Égalité Fraternité",
              icon: "mappin.circle.fill", city: "Paris",
              description: "Fidèle à son langage singulier — le calligraffiti — l’artiste franco-tunisien, aujourd’hui reconnu à l’international, a marqué de nombreuses villes à travers le monde par ses fresques monumentales. Il avait déjà laissé une empreinte mémorable dans le 13e arrondissement lors de l'aventure de la Tour Paris 13.",
              type: "Calligraphie"+" , "+"Mural",
              condition: "Bonne",
              date: "Avril 2025",
              author: "El Seed",
              localisation: "1 Place Igor Stravinsky, 75004 Paris",
              coordinates: CLLocationCoordinate2D(latitude: 48.859259023781, longitude: 2.351590103643)),
    
    StreetArt(photo: "joconde",
              name: "La Joconde de Marseille",
              icon: "mappin.circle.fill",
              city: "Marseille",
              description: "Dans le cadre de l’exposition « La Joconde, exposition immersive » au Palais de la Bourse à Marseille, coproduite par le Grand Palais Immersif et le Musée du Louvre, le MauMA : Musée des arts urbains de Marseille a donné « carte blanche » à l’artiste Kan / DMV pour la réalisation de l’œuvre « La Joconde de Marseille ». Produite et coordonnée par Méta 2, elle est la première représentation urbaine de la célèbre Monna Lisa au sein de la cité phocéenne.",
              type: "Harlftone",
              condition: "Bonne",
              date: "Mars 2022",
              author: "Kan DMV",
              localisation: "68 Av. Roger Salengro, 13003 Marseille",
              coordinates: CLLocationCoordinate2D(latitude: 43.312180602603, longitude: 5.372180596633)),
    
    StreetArt(photo: "cecile",
              name: "La maison de Cécile",
              icon: "mappin.circle.fill",
              city: "Paris",
              description: "Cette fresque est le fruit de la rencontre entre Seth Globepainter & Cécile, commerçante depuis 40 ans dans le quartier dont le magasin de souvenirs et de cadeaux a beaucoup souffert des dernières restrictions liées au Covid. Cécile voulait voir une de ses peintures en buvant son café le matin, son vœu est enfin réalisé.",
              type: "Mural",
              condition: "Restaurée",
              date: "Juin 2021",
              author: "Seth Globepainter",
              localisation: "4 Rue Saint-Médard, 75005 Paris",
              coordinates: CLLocationCoordinate2D(latitude: 48.843637979051, longitude: 2.35105301363)),
    
    StreetArt(photo: "chloe",
              name: "Chloé",
              icon: "mappin.circle.fill",
              city: "Marseille",
              description: "Voici le portrait de Chloé Suzzies, une célèbre skateuse originaire de Marseille. Il a été peint à La Friche Belle de Mai, un centre culturel situé au-dessus du skatepark.",
              type: "Mural"+" , "+"Stencil",
              condition: "Bonne",
              date: "Janvier 2018",
              author: "Mahn Kloix",
              localisation: "41 Rue Jobin, 13003 Marseille",
              coordinates: CLLocationCoordinate2D(latitude: 43.309592983364, longitude: 5.390366979591)),
    
    StreetArt(photo: "pa",
              name: "PA_278",
              icon: "mappin.circle.fill",
              city: "Paris",
              description: "Sa démarche artistique — L’invasion — a commencé le jour où Invader a posé le premier Space Invader dans une rue de Paris, près de la place de la Bastille vers 1998. Cette œuvre, maintenant recouverte d'une couche d'enduit, est pour l'artiste devenue un Space Invader fossilisé, pris dans les sédiments de la ville[8]. Le programme de cette « invasion » commence réellement cette année-là.",
              type: "Invaders"+" , "+"Mosaïque",
              condition: "Bonne",
              date: "Juillet 2008",
              author: "Invader",
              localisation: "53 Rue des Maraîchers, 75020 Paris",
              coordinates: CLLocationCoordinate2D(latitude: 48.852942017304, longitude: 2.406523023921)),
    
    StreetArt(photo: "chut",
              name: "Chuuuut...",
              icon: "mappin.circle.fill",
              city: "Paris",
              description: "Dans le paysage urbain parisien, certaines œuvres ne se contentent pas d’exister : elles s’imposent comme des repères visuels, des ponctuations artistiques dans la trame de la ville. C’est le cas du Chuuut, l’imposant pochoir de Jef Aérosol (autoportrait) qui veille sur le quartier du Centre Pompidou depuis 2011. Avec son regard perçant et son doigt posé sur les lèvres, cette figure silencieuse est devenue l’une des images les plus reconnaissables du street art français.",
              type: "Stencil"+" , "+"Mural",
              condition: "Bonne",
              date: "Juin 2011",
              author: "Jef Aérosol",
              localisation: "1 Place Igor Stravinsky, 75004 Paris",
              coordinates: CLLocationCoordinate2D(latitude: 48.8594813, longitude: 2.3516877)),
    
    StreetArt(photo: "cigale",
              name: "Le Tigre et la Cigale",
              icon: "mappin.circle.fill",
              city: "Bessèges",
              description: "Brésilien résident à Marseille, Nhobi est particulièrement habité par la forêt et les esprits qui la peuplent. Il réalise des fresques où la faune et la végétation sont omniprésentes. Sa fresque fait référence à la dévastation forestière et particulièrement à la forêt amazonienne qui brûle.",
              type: "Mural",
              condition: "Restaurée",
              date: "Août 2021",
              author: "Nhobi",
              localisation: "175 Rue du Portail de Fer, 30160 Bessèges",
              coordinates: CLLocationCoordinate2D(latitude: 44.298224004124, longitude: 4.090830005748)),
    
    
]

//
//struct Location : Identifiable {
//    var id = UUID()
//    var name: String
//    var coordinate: CLLocationCoordinate2D
//}
//
//let locations = [
//    Location(name: "Liberté Égalité Fraternité",
//             coordinate: CLLocationCoordinate2D(latitude: 48.859259023781, longitude: 2.351590103643)),
//    Location(name: "La Joconde de Marseille",
//             coordinate: CLLocationCoordinate2D(latitude: 43.312180602603, longitude: 5.372180596633)),
//    Location(name: "La Maison de Cécile",
//             coordinate: CLLocationCoordinate2D(latitude: 48.843637979051, longitude: 2.35105301363)),
//    Location(name: "Chloé",
//             coordinate: CLLocationCoordinate2D(latitude: 43.309592983364, longitude: 5.390366979591)),
//    Location(name: "PA_278",
//             coordinate: CLLocationCoordinate2D(latitude: 48.852942017304, longitude: 2.406523023921)),
//    Location(name: "Chuuut",
//             coordinate: CLLocationCoordinate2D(latitude: 48.8594813, longitude: 2.3516877)),
//    Location(name: "Le Tigre et la Cigale",
//             coordinate: CLLocationCoordinate2D(latitude: 44.298224004124, longitude: 4.090830005748)),
//]
