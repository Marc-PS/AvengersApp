//
//  Heroes.swift
//  AvengersApp
//
//  Created by Marc Perelló Sapiña on 11/12/20.
//

import Foundation

typealias Heroes = [Hero]

struct Hero {
    var name: String = ""
    var image: String? = nil
    var portrayedBy: String = ""
    var description: String = ""
    var filmography: [String] = []
}

class HeroRepository {
    let heroesSample = [Hero(name: "Black Panther",
                             image: "img_heroes_black_panther",
                             portrayedBy: "Chadwick Boseman",
                             description: "Black Panther's real name is T'Challa, and he is depicted as the king and protector of the fictional African nation of Wakanda. Along with possessing enhanced abilities achieved through ancient Wakandan rituals of drinking the essence of the heart-shaped herb, T'Challa also relies on his proficiency in science, rigorous physical training, hand-to-hand combat skills, and access to wealth and advanced Wakandan technology to combat his enemies.",
                             filmography: ["Captain America: Civil War","Black Panther","Avengers: Infinity War", "Avengers: Endgame"]),
                        
                        Hero(name: "Black Widow",
                             image: "img_heroes_black_widow",
                             portrayedBy: "Scarlett Johansson",
                             description: "Black Widow's real name is Natasha Romanoff. The character was introduced as a Russian spy, an antagonist of the superhero Iron Man. She later defected to the United States, becoming an agent of the fictional spy agency S.H.I.E.L.D. and a member of the superhero team the Avengers.",
                             filmography: ["Iron Man 2", "The Avengers", "Captain America: The Winter Soldier", "Avengers: Age of Ultron", "Captain America: Civil War", "Avengers: Infinity War", "Avengers: Endgame", "Black Widow"]),
                        
                        Hero(name: "Captain America",
                             image: "img_heroes_captain_america",
                             portrayedBy: "Chris Evans",
                             description: "The character wears a costume bearing an American flag motif, and he utilizes a nearly indestructible shield that he throws as a projectile. Captain America is the alter ego of Steve Rogers, a frail young man enhanced to the peak of human perfection by an experimental serum to aid the United States government's efforts in World War II. Near the end of the war, he was trapped in ice and survived in suspended animation until he was revived in modern times. Although Captain America often struggles to maintain his ideals as a man out of his time, he remains a highly respected figure in his community, which includes becoming the long-time leader of the Avengers.",
                             filmography: ["Captain America: The First Avenger", "The Avengers", "Captain America: The Winter Soldier", "Avengers: Age of Ultron", "Captain America: Civil War", "Spider-Man: Homecoming", "Avengers: Infinity War", "Captain Marvel", "Avengers: Endgame"]),
                        
                        Hero(name: "Captain Marvel",
                             image: "img_heroes_captain_marvel",
                             portrayedBy: "Brie Larson",
                             description: "Captain Marvel (Kree name Mar-Vell, Earth alias Walter Lawson). Due to his Kree physiology which had evolved to cope with the heavier gravity of home planet Hala, Mar-Vell was significantly stronger and more durable than a normal human. As a soldier, he was trained in all forms of Kree combat, possessed a superior knowledge of tactics, and was equipped with a device called a universal beam; which was at first a handheld pistol before Mar-Vell converted it into a wrist-mounted device capable of projecting energy, emitting beams of pure darkness, and controlling magnetism.",
                             filmography: ["Captain Marvel", "Avengers: Endgame"]),
                        
                        Hero(name: "Dr. Strange",
                             image: "img_heroes_dr_strange",
                             portrayedBy: "Benedict Cumberbatch",
                             description: "The character begins as an egotistical surgeon (Stephen Strange) who loses the ability to operate after a car crash severely damages his hands. Searching the globe for healing, he encounters the Ancient One, the Sorcerer Supreme. Strange becomes his student, and learns to be a master of both the mystical and the martial arts. He acquires an assortment of mystical objects, including the powerful Eye of Agamotto and Cloak of Levitation, and takes up residence in a mansion referred to as the Sanctum Sanctorum, located in 177A Bleecker Street, New York City. Strange assumes the title of Sorcerer Supreme and, with his friend and valet Wong, defends the world from mystical threats.",
                             filmography: ["Doctor Strange","Thor: Ragnarok","Avengers: Infinity War", "Avengers: Endgame"]),
                        
                        Hero(name: "Gamora",
                             image: "img_heroes_gamora",
                             portrayedBy: "Zoe Saldana",
                             description: "Gamora is the adopted daughter of Thanos, and the last of her species. Her powers include superhuman strength and agility and an accelerated healing factor. She also is an elite combatant, being able to beat most of the opponents in the galaxy.",
                             filmography: ["Guardians of the Galaxy", "Guardians of the Galaxy Vol. 2", "Avengers: Infinity War", "Avengers: Endgame"]),
                        
                        Hero(name: "Hulk",
                             image: "img_heroes_hulk",
                             portrayedBy: "Mark Ruffalo",
                             description: "The character is both the Hulk, a green-skinned, hulking and muscular humanoid possessing a vast degree of physical strength, and his alter ego Dr. Robert Bruce Banner, a physically weak, socially withdrawn, and emotionally reserved physicist. The two exist as independent dissociative personalities, and resent each other. Following his accidental exposure to gamma rays saving the life of Rick Jones during the detonation of an experimental bomb, Banner is physically transformed into the Hulk when subjected to emotional stress, at or against his will, often leading to destructive rampages and conflicts that complicate Banner's civilian life.",
                             filmography: ["The Incredible Hulk (Edward Norton)", "The Avengers", "Iron Man 3", " Avengers: Age of Ultron", "Thor: Ragnarok", "Avengers: Infinity War", "Captain Marvel", "Avengers: Endgame"]),
                        
                        Hero(name: "Iron Man",
                             image: "img_heroes_ironman",
                             portrayedBy: "Robert Downey Jr.",
                             description: "A wealthy American business magnate, playboy, philanthropist, inventor and ingenious scientist, Anthony Edward (Tony) Stark suffers a severe chest injury during a kidnapping. When his captors attempt to force him to build a weapon of mass destruction, he instead creates a mechanized suit of armor to save his life and escape captivity. Later, Stark develops his suit, adding weapons and other technological devices he designed through his company, Stark Industries.",
                             filmography: ["Iron Man", "The Incredible Hulk", "Iron Man 2", "The Avengers", "Iron Man 3", "Avengers: Age of Ultron", "Captain America: Civil War", "Spider-Man: Homecoming", "Avengers: Infinity War", "Avengers: Endgame", "Spider-Man: Far From Home", "Black Widow"]),
                        
                        Hero(name: "Spider-Man",
                            image: "img_heroes_spiderman",
                            portrayedBy: "Tom Holland",
                            description: "Spider-Man is the alias of Peter Parker, an orphan raised by his Aunt May and Uncle Ben in New York City after his parents Richard and Mary Parker died in a plane crash. His origin story has him acquiring spider-related abilities after a bite from a radioactive spider; these include clinging to surfaces, superhuman strength and agility, and detecting danger with his (spider-sense). He then builds wrist-mounted (web-shooter) devices that shoot artificial spider-webbing of his own design.",
                            filmography: ["Spider-Man (Tobey Maguire)", "Spider-Man 2 (Tobey Maguire)", "Spider-Man 3 (Tobey Maguire)", "The Amazing Spider-Man (Andrew Garfield)", "The Amazing Spider-Man 2 (Andrew Garfield)", "Captain America: Civil War", "Spider-Man: Homecoming", "Avengers: Infinity War", "Avengers: Endgame", "Spider-Man: Far From Home"]),
                        
                       Hero(name: "Thor",
                            image: "img_heroes_thor",
                            portrayedBy: "Chris Hemsworth",
                            description: "The character, which is based on the Norse deity of the same name, is the Asgardian god of thunder who possesses the enchanted hammer, Mjolnir, which grants him the ability to fly and manipulate weather amongst his other superhuman attributes.",
                            filmography: ["Thor", "The Avengers", "Thor: The Dark World", "Avengers: Age of Ultron", "Doctor Strange", "Thor: Ragnarok", "Avengers: Infinity War", "Avengers: Endgame"])]
}

