//
//  File.swift
//  MVC Welcome
//
//  Created by Николай Никитин on 24.10.2021.
//

import Foundation
import UIKit

struct Characters {
  var name: String
  var type: String
  var photo: UIImage
  var force: String
  var dexterity: String
  var mind: String
  var damage: String
  var defense: String
  var speed: String
  var notes: String
  var rating: Int
  var timeStamp: Date
}
extension Characters {
  var stars: String {
    return String(repeating: "⭐️", count: rating)
  }

  var formattedTimeStamp: String {
    let format = DateFormatter()
    format.dateStyle = .short
    format.timeStyle = .short
    format.locale = Locale.current
    return format.string(for: timeStamp)!
  }
}
extension Characters{
  static var all: [Characters]{
    return [
      Characters(name: "Axe", type: "Strength",  photo: UIImage(named: "axe.png")!, force: "25 + 3,4", dexterity: "20 + 2,2", mind: "18 + 1,6", damage: "27 - 31", defense: "-1", speed: "310", notes: "Axe — герой-инициатор, раскрывающий себя на 3-й позиции в сложной линии.", rating: 10, timeStamp: Date()),
      Characters(name: "Earthshaker", type: "Strength", photo: UIImage(named: "earthshaker")!, force: "22 + 3,7", dexterity: "12 + 1,4", mind: "18 + 2,1", damage: "27 - 37", defense: "2", speed: "315", notes: "Earthshaker — герой поддержки, инициатор, предпочитающий сложную линию. Может быть как четвертой, так и третьей позицией, поскольку большее количество опыта и золота позволяют герою быстрее раскрыть весь свой потенциал.", rating: 9, timeStamp: Date()),
      Characters(name: "Pudge",  type: "Strength",   photo: UIImage(named: "pudge")!, force: "25 + 3", dexterity: "14 + 1,4", mind: "16 + 1,5", damage: "42-48", defense: "0", speed: "280", notes: "Pudge — герой поддержки, предпочитающий сложную линию, отлично себя показывает в инициации драк.", rating: 8, timeStamp: Date()),
      Characters(name: "Sand King",  type: "Strength",   photo: UIImage(named: "sand_king")!, force: "22 + 2,7", dexterity: "19 + 1,8", mind: "16 + 1,8", damage: "45-55", defense: "-1", speed: "290", notes: "Sand King — герой для сложной линии, способный выполнять как роль поддержки, так и кор-героя, а также обладающий высоким уроном по площади.", rating: 1, timeStamp: Date()),
      Characters(name: "Sven", type: "Strength", photo: UIImage(named: "sven")!, force: "22 + 3,2", dexterity: "21 + 2", mind: "16 + 1,3", damage: "41-43", defense: "0", speed: "325", notes: "Sven — керри-герой, обладающий высокой выживаемостью и уроном, а также способный быстро добывать золото.", rating: 7, timeStamp: Date()),
      Characters(name: "Tidehunter", type: "Strength", photo: UIImage(named: "tidehunter")!, force: "27 + 3,5", dexterity: "15 + 1,5", mind: "18 + 1,7", damage: "25 - 31", defense: "0", speed: "300", notes: "Tidehunter — герой, прекрасно справляющийся с ролью оффлейнера, способный эффективно инициировать драки и принимать на себя основной удар врага.", rating: 6, timeStamp: Date()),
      Characters(name: "Anti-Mage", type: "Agility", photo: UIImage(named: "anti_mage")!, force: "23 + 1,6", dexterity: "24 + 2,8", mind: "12 + 1,8", damage: "29 - 33", defense: "0", speed: "310", notes: "Anti-Mage — герой, чаще всего выступающий на позиции керри, обладающий высокой мобильностью и потенциалом к скоростной зачистке лесных лагерей крипов.", rating: 5, timeStamp: Date()),
      Characters(name: "Drow Ranger", type: "Agility", photo: UIImage(named: "drow_ranger")!, force: "18 + 1,9", dexterity: "20 + 2,9", mind: "15 + 1,4", damage: "29-36", defense: "0", speed: "295", notes: "Drow Ranger — керри герой дальнего боя, предназначенный для нанесения высокого урона по одиночным целям. Обладает высокими стартовыми показателями здоровья и брони, но регенерация и скорость передвижения оставляют желать лучшего. Drow Ranger может стоять на лёгкой или центральной линии, но после получения ультимативной способности основным источником золота становится лес.", rating: 4, timeStamp: Date()),
      Characters(name: "Mirana", type: "Agility", photo: UIImage(named: "mirana")!, force: "18 + 2.2", dexterity: "18 + 3.7", mind: "22 + 1.9", damage: "27-32", defense: "-1", speed: "290", notes: "Mirana — герой поддержки, в редких ситуациях исполняющий роль основы, обычно начинает игру в сложной линии, затем постоянно перемещается по карте. Её главная особенность — это возможность с самого начала игры вывести вражеского героя из строя на длительное время.", rating: 3, timeStamp: Date()),
      Characters(name: "Morphling", type: "Agility", photo: UIImage(named: "morphling")!, force: "22 + 3", dexterity: "24 + 3,9", mind: "19 + 1,8", damage: "9-18", defense: "-2", speed: "280", notes: "Morphling — кор-герой, предпочитающий центральную линию. Имеет высокую выживаемость и наносит огромный урон в сражениях благодаря своим способностям.", rating: 2, timeStamp: Date()),
      Characters(name: "Razor", type: "Agility", photo: UIImage(named: "razor")!, force: "22 + 2,8", dexterity: "22 + 2,6", mind: "21 + 2,2", damage: "23 - 25", defense: "-1", speed: "290", notes: "Razor — герой, подходящий для центральной линии, обладающий высоким количеством как физического, так и магического урона.", rating: 1, timeStamp: Date()),
      Characters(name: "Vengeful Spirit", type: "Agility", photo: UIImage(named: "vengeful_spirit")!, force: "19 + 2,6", dexterity: "20 + 3,2", mind: "19 + 1,5", damage: "24 - 30", defense: "0", speed: "295", notes: "Vengefull Spirit — герой поддержки, подходящий как для лёгкой, так и для сложной линии, усиливающий свою команду одним присутствием на поле боя.", rating: 2, timeStamp: Date()),
      Characters(name: "Crystal Maiden", type: "Intelligence", photo: UIImage(named: "crystal_maiden")!, force: "18 + 2.2", dexterity: "16 + 1.60", mind: "12 + 3.30", damage: "28 - 34", defense: "-1", speed: "280", notes: "Crystal Maiden — герой поддержки, предпочитающий легкую линию. Задача Crystal Maiden на ранней стадии игры — защищать керри.", rating: 3, timeStamp: Date()),
      Characters(name: "Dazzle", type: "Intelligence", photo: UIImage(named: "dazzle")!, force: "18 + 2,5", dexterity: "20 + 1,7", mind: "25 + 3,7", damage: "22 - 28", defense: "0", speed: "305", notes: "Dazzle — эффективный герой поддержки, предпочитающий легкую линию, поскольку имеет возможность держать противников на расстоянии от своей кор-позиции. ", rating: 4, timeStamp: Date()),
      Characters(name: "Lich", type: "Intelligence", photo: UIImage(named: "lich")!, force: "20 + 2,1", dexterity: "15 + 2", mind: "24 + 4,1", damage: "24‒33", defense: "-1", speed: "295", notes: "ich — герой поддержки дальнего боя, обладающий рядом способностей, основанных на замедлении противника. Lich может исполнять свою роль как в лёгкой, так и на сложной линии. ", rating: 5, timeStamp: Date()),
      Characters(name: "Lina", type: "Intelligence", photo: UIImage(named: "lina")!, force: "20 + 2,4", dexterity: "23 + 2,1", mind: "30 + 3,7", damage: "21 - 29", defense: "0", speed: "290", notes: "Lina — герой дальнего боя, способный быть эффективным как на центральной линии, так и на любой роли поддержки.", rating: 6, timeStamp: Date()),
      Characters(name: "Lion", type: "Intelligence", photo: UIImage(named: "lion")!, force: "18 + 2,2", dexterity: "18 + 1,5", mind: "18 + 3,5", damage: "29-35", defense: "-1", speed: "290", notes: "Lion — стабильный и эффективный герой поддержки, предпочитающий легкую линию. С помощью набора своих заклинаний  Lion способен мгновенно уничтожить часть вражеских иллюзий, выдать продолжительный контроль, лишить противника маны и нанести высокий мгновенный урон.", rating: 7, timeStamp: Date()),
      Characters(name: "Necrophos", type: "Intelligence", photo: UIImage(named: "necrophos")!, force: "18 + 2,3", dexterity: "12 + 1,3", mind: "21 + 2,7", damage: "26-30", defense: "1", speed: "280", notes: "Necrophos — герой, отлично подходящий для центральной линии и обладающий высокой выживаемостью с хорошим уроном.", rating: 8, timeStamp: Date()),
      Characters(name: "Puck", type: "Intelligence", photo: UIImage(named: "puck")!, force: "17 + 2,4", dexterity: "22 + 2,5", mind: "23 + 3,5", damage: "22 - 30", defense: "-5", speed: "290", notes: "Puck — очень мобильный герой, предпочитающий центральную линию, поимка которого — крайне сложная задача для противника.", rating: 9, timeStamp: Date()),
      Characters(name: "Shadow Shaman", type: "Intelligence", photo: UIImage(named: "shadow_shaman")!, force: "23 + 2.3", dexterity: "16 + 1.6", mind: "25 + 3.5", damage: "52-59", defense: "2", speed: "285", notes: "Shadow Shaman — герой поддержки, подходящий для сложной и лёгкой линии, а также обладающий высоким количеством контроля и урона по зданиям.", rating: 10, timeStamp: Date()),
      Characters(name: "Storm Spirit", type: "Intelligence", photo: UIImage(named: "storm_spirit")!, force: "21 + 2", dexterity: "22 + 1,7", mind: "23 + 3,9", damage: "24-34", defense: "2", speed: "285", notes: "Storm Spirit — герой, предпочитающий центральную линию, отличающийся очень высокой мобильностью и сильным магическим уроном.", rating: 9, timeStamp: Date()),
      Characters(name: "Windranger", type: "Intelligence", photo: UIImage(named: "windranger")!, force: "18 + 3", dexterity: "17 + 1,4", mind: "18 + 3,6", damage: "24‒36", defense: "-1", speed: "290", notes: "Windranger — кор-герой, предпочитающий сложную или центральную линию. Из-за высокой мобильности Windranger должна искать одиноких противников, чтобы убить их до драки.", rating: 8, timeStamp: Date()),
      Characters(name: "Witch Doctor", type: "Intelligence", photo: UIImage(named: "witch_doctor")!, force: "18 + 2,3", dexterity: "13 + 1,4", mind: "22 + 3,3", damage: "29-39", defense: "0", speed: "300", notes: "Witch Doctor — герой поддержки с дальним типом атаки, предпочитающий легкую линию. Актуален на любой стадии игры, поскольку имеет некоторые заклинания, эффект которых не ослабевает со временем.", rating: 7, timeStamp: Date()),
      Characters(name: "Zeus", type: "Intelligence", photo: UIImage(named: "zeus")!, force: "19 + 2.1", dexterity: "11 + 1.20", mind: "21 + 3.3", damage: "33 - 41", defense: "2", speed: "315", notes: "Zeus — герой основы, предпочитающий центральную линию. ", rating: 6, timeStamp: Date()),
    ]
  }
}
