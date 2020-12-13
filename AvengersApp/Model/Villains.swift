//
//  Villains.swift
//  AvengersApp
//
//  Created by Marc Perelló Sapiña on 11/12/20.
//

import Foundation

typealias Villains = [Villain]

struct Villain {
    var name: String = ""
    var image: String = ""
    var portrayedBy: String = ""
    var description: String = ""
    var filmography: [String] = []
}

class VillainRepository {
    let villainsSample = [Villain(name: "Dormammu",
                                 image: "img_villains_dormammu",
                                 portrayedBy: "Benedict Cumberbatch",
                                 description: "Dormammu has been described as something worse than a demon. The character is an interdimensional entity composed of mystical energy that can be used to achieve almost any effect he desires, including: energy projection, matter manipulation, resizing, teleportation, possession; necromancy, bestowing of power, and creating demon lords. In certain instances Dormammu has been displayed approaching a universal, or even multiversal, scale of influence.",
                                 filmography: ["Doctor Strange"]),
                          
                          Villain(name: "Ego",
                                 image: "img_villains_ego",
                                 portrayedBy: "Kurt Russell",
                                 description: "The living planet named Ego has been called a bioverse. Every part of its substance, including the atmosphere, is alive as much as it is controlled by the consciousness of Ego. It often transforms its surface to appear as a giant face to address powerful beings and can shape its terrain to suit the circumstances. Ego can use its substance to display plant-like growth, manipulate its own weather for heavy winds or storms, and the ground to generate earthquakes, volcanoes, geysers, and canyons, create a protective shield of solid clouds to defend from space attacks, extrude tentacles that reach out into space, and produce vast numbers of Antibodies, which are powerful, non-sentient humanoids that it mentally commands.",
                                 filmography: ["Guardians of the Galaxy Vol.2"]),
                          
                          Villain(name: "Hela",
                                 image: "img_villains_hela",
                                 portrayedBy: "Cate Blanchett",
                                 description: "Although Hela is classified as an Asgardian and has the physical stature of an Asgardian, her actual heritage is as a full blooded giant of Jötunheimr, even though both races share similar attributes. Hela possesses attributes common to Asgardian gods. She possesses superhuman strength, speed, stamina, agility, reflexes and durability at levels far surpassing those of the vast majority of either race. Her vast strength has allowed her to engage in sustained hand-to-hand combat with Thor. Like all Asgardians she has resistance to magic. Hela has vast mystical powers which she can use for various effects like limitless astral projection while retaining many of her powers and abilities, firing deadly bolts of energy from her hands which can age or even kill Asgardians, levitation and the creation of illusions. Her most powerful ability is her Hand of Glory, a technique that uses mystical energy to enhance the strength of her punch to kill even an Asgardian.",
                                 filmography: ["Thor:Ragnarok"]),
                          
                          Villain(name: "Ivan Vanko",
                                 image: "img_villains_ivan_vanko",
                                 portrayedBy: "Mickey Rourke",
                                 description: "Ivan Antonovich Vanko is an original character based on Whiplash and the Crimson Dynamo, and the son of Anton Vanko. A ruthless technological genius bent on ruining Tony Stark, he works alongside Justin Hammer and wields a pair of metal, electrified whips. Vanko is depicted as being very manipulative, particularly towards Hammer, while also being physically strong.",
                                 filmography: ["Iron Man 2"]),
                          
                          Villain(name: "Johann Schmidt",
                                 image: "img_villains_johann_schmidt",
                                 portrayedBy: "Ross Marquand",
                                 description: "Although he has no superhuman abilities, the Red Skull possesses a high intellect and inventive genius and is a highly gifted subversive strategist and political operative.",
                                 filmography: ["Captain America: The First Avenger", "Avengers: Infinity War", "Avengers: Endgame"]),
                          
                          Villain(name: "Malekith",
                                 image: "img_villains_malekith",
                                 portrayedBy: "Christopher Eccleston",
                                 description: "Malekith has all the normal attributes of a member of the race of dark elves, although his abilities are a result of above-average development. He possesses superhuman intellect, strength, speed, stamina, durability, agility and reflexes. As a dark elf, Malekith also has the ability to manipulate the forces of magic for a variety of effects, including teleportation, energy projection, physical malleability, flight (by transforming into mist), illusion casting, and the ability to change the shape and appearance of other beings or objects. Malekith, like all Dark Elves, has a vulnerability to iron, which disrupts or cancels his magical spells.",
                                 filmography: ["Thor: The Dark World"]),
                          
                          Villain(name: "Ronan",
                                 image: "img_villains_ronan",
                                 portrayedBy: "Lee Pace",
                                 description: "As a Kree warrior in peak physical condition, Ronan possesses his species' unique physiology and is thus resistant to poisons, toxins, and diseases. He has superhuman physical attributes which are all further enhanced by his exoskeleton body-armor. Ronan's armor, which contains multiple scanners, can also create fields of invisibility, and his gauntlets can discharge cosmic energy bolts or generate sufficient coldness to place certain lifeforms into a state of suspended animation. In addition, Ronan possesses a brilliant strategic mind; his high intellect allowed him to rise to one of the highest positions in the Kree Empire. He also has extensive knowledge in all matters pertaining to Kree law and is well-versed in the use of his species' highly advanced technology.",
                                 filmography: ["Guardians of the Galaxy", "Captain Marvel"]),
                          
                          Villain(name: "Thanos",
                                 image: "img_villains_thanos",
                                 portrayedBy: "Josh Brolin",
                                 description: "Thanos is a mutant member of the race of superhumans known as the Titanian Eternals. The character possesses abilities common to the Eternals, but amplified to a higher degree through a combination of his mutant–Eternal heritage, bionic amplification, mysticism, and power bestowed by the abstract entity, Death. Demonstrating enormous superhuman strength, speed, stamina, immortality and invulnerability among other qualities, Thanos can absorb and project vast quantities of cosmic energy, and is capable of telekinesis and telepathy. He can manipulate matter and live indefinitely without food, air or water, cannot die of old age, is immune to all terrestrial diseases, and has high resistance to psychic assaults. Thanos is also an accomplished hand-to-hand combatant, having been trained in the art of war on Titan.",
                                 filmography: ["The Avengers (Damion Poitier)", "Guardians of the Galaxy", "Avengers: Age of Ultron", "Avengers: Infinity War", "Avengers: Endgame"]),
                          
                          Villain(name: "Ultron",
                                 image: "img_villains_ultron",
                                 portrayedBy: "James Spader",
                                 description: "The visual appearance and powers of the character have varied, but common powers include superhuman levels of strength, speed, stamina, durability, and reflexes; flight at subsonic speeds; and various offensive weapons such as concussive blasts of energy fired from its optical sensors or hands and an (encephalo-ray), which places victims into a deathlike coma. The latter ray also allows Ultron to mesmerize and mind-control victims, or implant subliminal hypnotic commands within their minds to be enacted at a later time. Ultron also has the ability to convert electromagnetic radiation into electrical energy for use or storage. Ultron has a genius intellect, a capacity for creative intelligence and self-repair, superhuman cybernetic analytical capabilities, and the ability to process information and make calculations with superhuman speed and accuracy. The character is an expert roboticist and strategist.",
                                 filmography: ["Avengers: Age of Ultron"]),
                          
                          Villain(name: "Yon-Rogg",
                                 image: "img_villains_yon_rogg",
                                 portrayedBy: "Jude Law",
                                 description: "Yon-Rogg has super-strength, agility, stamina and also skilled in unarmed combat. He is an alien Kree, a military commander whose weakness is his jealousy of the accomplishments of others and his love for the medic Una. He is sent to supervise the troublesome planet Earth.",
                                 filmography: ["Captain Marvel"])]
                          
    
}
