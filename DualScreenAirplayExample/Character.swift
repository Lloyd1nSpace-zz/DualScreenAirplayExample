//
//  Character.swift
//  DualScreenAirplayExample
//
//  Created by Lloyd Sykes on 4/25/18.
//  Copyright © 2018 URBN. All rights reserved.
//

import UIKit

enum Character {
    
    case solidSnake, meryl, otacon, revolverOcelot, vulcanRaven, psychoMantis,  liquidSnake
    
    // NOTE: Swift 4.2 will have .allTypes property rendering this unnecessary - https://www.whatsnewinswift.com
    static let allCharacters: [Character] = [.solidSnake, .meryl, .otacon, .revolverOcelot, .vulcanRaven, .psychoMantis, .liquidSnake]
    
    var smallImage: UIImage? {
        switch self {
        case .solidSnake:
            return #imageLiteral(resourceName: "SnakeSmall")
        case .meryl:
            return #imageLiteral(resourceName: "MerylSmall")
        case .otacon:
            return #imageLiteral(resourceName: "OtaconSmall")
        case .psychoMantis:
            return #imageLiteral(resourceName: "MantisSmall")
        case .revolverOcelot:
            return #imageLiteral(resourceName: "OcelotSmall")
        case .liquidSnake:
            return #imageLiteral(resourceName: "LiquidSmall")
        case .vulcanRaven:
            return #imageLiteral(resourceName: "RavenSmall")
        }
    }
    
    var largeImage: UIImage? {
        switch self {
        case .solidSnake:
            return #imageLiteral(resourceName: "SnakeLarge")
        case .meryl:
            return #imageLiteral(resourceName: "MerylLarge")
        case .otacon:
            return #imageLiteral(resourceName: "OtaconLarge")
        case .psychoMantis:
            return #imageLiteral(resourceName: "PsychoMantisLarge")
        case .revolverOcelot:
            return #imageLiteral(resourceName: "OcelotLarge")
        case .liquidSnake:
            return #imageLiteral(resourceName: "LiquidLarge")
        case .vulcanRaven:
            return #imageLiteral(resourceName: "RavenLarge")
        }
    }
    
    var name: String {
        switch self {
        case .solidSnake:
            return "Solid Snake"
        case .meryl:
            return "Meryl"
        case .otacon:
            return "Otacon"
        case .psychoMantis:
            return "Psycho Mantis"
        case .revolverOcelot:
            return "Revolver Ocelot"
        case .liquidSnake:
            return "Liquid Snake"
        case .vulcanRaven:
            return "Vulcan Raven"
        }
    }
    
    var bio: String {
        switch self {
        case .solidSnake:
            return "Solid Snake (ソリッド・スネーク Soriddo Sunēku) is the primary character of the original series. In the original Metal Gear games, he's a rookie member from FOXHOUND given the mission to find and destroy the Metal Gear located within Outer Heaven and Zanzibar Land, leading to confrontations with comrade Gray Fox both times, as well as confrontations with Big Boss (the phantom in Outer Heaven and his own superior/mentor in Zanzibar Land). In Metal Gear Solid, Solid Snake becomes friends with Otacon and fights his terrorist twin Liquid Snake while his real name David (デイビッド Deibiddo) is revealed. In Metal Gear Solid 2: Sons of Liberty, Solid Snake assists Raiden against Solidus Snake under the false name Iroquois Pliskin (イロコィ・プリスキン Irokoi Purisukin). By Metal Gear Solid 4: Guns of the Patriots, he gives himself the nickname Old Snake (オールド・スネーク Ōrudo Sunēku) due to his accelerated aging process and is the playable character once more. Solid Snake is voiced by Akio Ōtsuka in the Japanese version and by David Hayter in the English translation."
        case .meryl:
            return "Meryl Silverburgh (メリル・シルバーバーグ Meriru Shirubābāgu) is a character based on the character of the same name from Policenauts that was redesigned and reintroduced. She is introduced in Metal Gear Solid as Solid Snake's sidekick/love interest and Roy Campbell's legal niece/biological daughter. Meryl returns in Metal Gear Solid 4: Guns of the Patriots as Rat Patrol Team One's commander. Meryl Silverburgh is voiced by Kyoko Terase in the Japanese version and by Debi Mae West in the English translation."
        case .otacon:
            return "Hal Emmerich (ハル・エメリッヒ Haru Emerihhi), nicknamed Otacon (オタコン Otakon), is a recurring character in the Metal Gear Solid series and Solid Snake's close friend. He is introduced in Metal Gear Solid as ArmsTech's employee and Metal Gear REX's engineer that becomes Snake's close ally upon learning of REX's nuclear strike capabilities. Afterwards, he helped Solid Snake with the non-profit Philanthropy organization while dealing with more emotional problems in Metal Gear Solid 2: Sons of Liberty and Metal Gear Solid 4: Guns of the Patriots. Otacon / Hal Emmerich is voiced by Hideyuki Tanaka in the Japanese version and by Christopher Randolph in the English translation."
        case .psychoMantis:
            return """
            Psycho Mantis (サイコ・マンティス Saiko Mantisu) is a psychic expert for Liquid Snake's FOXHOUND unit in Metal Gear Solid. After the collapse of the Soviet Union, he came to America looking for a job. Prior to joining FOXHOUND, he worked with the KGB and the FBI. His special abilities include the psychic powers of psychokinesis and telepathy, which in a Fourth Wall-breaking scene allows him to read the player's memory card and "move" the controller by making it vibrate. As a result of being disgusted with his father's inner thoughts, he burned his own village and started despising people. He also claims to be able to read the future, but this is implied to be a use of telepathy to find out what his opponents will do next as opposed to true clairvoyance. Mantis encounters Solid Snake twice, the first time he takes control of Meryl Sliverburgh's mind, the second encounter he and Snake do battle, with Mantis being killed. His predictions also seem to be susceptible to change, stating that Snake has a large place in Meryl's heart, but cannot see if their futures lie together. After defeating Screaming Mantis in Metal Gear Solid 4, the original Mantis makes an appearance, attempting to "read your mind" as before, but cannot due to the advanced systems. He then tries to manipulate the controller, which (depending on whether controller vibration is available) either fails and infuriates him or succeeds and makes him scream in delight before he vanishes into the air. Drebin later reveals that the Beauty and the Beast Corps had been under the control of Mantis all along.
            
            The character's first chronological appearance is in Metal Gear Solid V: The Phantom Pain, where he is known as Tretij Rebenok (トリーチェゴ・レビョンカ Torīchego Rebyonka, Russian for "The Third Child"). The character's origin story explains that he was identified by Soviet researchers and taken to a facility in Moscow where he was housed with the comatose Volgin. Responding to Volgin's innate, overriding desire for revenge, the two broke out, with Volgin as the Man on Fire. The boy and the Man on Fire pursue Venom Snake throughout the story, working alongside Skull Face, the game's antagonist. The boy is able to detect the subtle electromagnetic currents running between the brain's synapses, and is particularly sensitive to feelings of anger, hatred and the desire for revenge. These feelings manifest in the physical world as a representation of those emotions. However, since he is still a child, he is overwhelmed by these emotions and becomes a slave to the will of whoever is expressing them. Over the course of the story, he identifies these feelings as being strongest in Eli and their relationship becomes symbiotic, magnifying the boy's power even further and allowing Eli to take control of Metal Gear Sahelanthropus. Once Snake disables Sahelanthropus, the boy steals a sample of a weaponized parasite designed to target English language speakers and passes it on to Eli, and the two disappear.
            
            Psycho Mantis was polled as the 8th "Greatest Video Game Villain of All Time" by IGN, and his boss battle being the 2nd Greatest Moment in Gaming. In the Japanese version, Psycho Mantis has been voiced by Kazuyuki Sogabe (in Metal Gear Solid) as well as Hiroshi Yanaka (in Metal Gear Solid: Digital Graphic Novel) and Shōzō Iizuka (in Metal Gear Solid 4). Psycho Mantis is voiced by Doug Stone in the English translation.
            """
        case .revolverOcelot:
            return "Revolver Ocelot (リボルバー・オセロット Riborubā Oserotto), otherwise known as Shalashaska (シャラシャーシカ Sharashāshika) and Major Ocelot (オセロット少佐 Oserotto Shōsa), is a recurring gunslinger antagonist; a major nemesis of Solid Snake during the original Metal Gear Solid games, Liquid Snake's henchman within FOXHOUND during Metal Gear Solid, both Solidus Snake's right-hand man and the Patriots' agent during Metal Gear Solid 2, a friendly rival of Naked Snake during Metal Gear Solid 3, and an ally of Venom Snake during Metal Gear Solid V. Playing a major role in the overall story, Ocelot's intentions during the games he appears in are shrouded in mystery, and are all to accomplish his own undisclosed intentions. In the Japanese version, Revolver Ocelot / Shalashaska was voiced by Kōji Totani (in the original Metal Gear Solid games) and by Satoshi Mikami (in Metal Gear Solid V). In the English translation, Revolver Ocelot / Shalashaska is voiced by Patric Zimmerman (in the original Metal Gear Solid games) and by Troy Baker (in Metal Gear Solid V). Major Ocelot is voiced by Takumi Yamazaki in Japanese and by Joshua Keaton in English."
        case .liquidSnake:
            return "Liquid Snake (リキッド・スネーク Rikiddo Sunēku), real name Eli (イーライ Eri), is Solid Snake's twin brother, Big Boss's second clone, and the main antagonist of Metal Gear Solid. One of Liquid's motivations in Metal Gear Solid is his jealousy and hatred towards Snake and his desire to surpass his \"genetic destiny\" from Big Boss. Liquid Snake is voiced by Banjō Ginga in the Japanese version and by Cam Clarke in the English translation. Eli is voiced by Yutaro Honjo in Japanese and by Piers Stubbs in English."
        case .vulcanRaven:
            return "Vulcan Raven (バルカン・レイブン Barukanreibun) is an Inuit member of FOXHOUND who wields a giant Vulcan cannon and has shamanic powers of intuition seen in Metal Gear Solid. He is able to discern Solid Snake's heritage and was present in Outer Heaven prior to his involvement at Liquid Snake's FOXHOUND unit. He does battle with Snake twice, the first battle with Raven in an M1 Abrams tank, the second in a freezer with Raven being killed. During his death scene, he gives info on Decoy Octopus's impersonation of the DARPA Chief. He also leaves Snake with a cryptic message of his violent future before his body is completely devoured by ravens. Vulcan Raven is voiced by Yukitoshi Hori in the Japanese version and by Peter Lurie in the English translation."
        }
    }
}
