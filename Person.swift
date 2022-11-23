//
//  Name.swift
//  ContactList
//
//  Created by Lepestok Jora on 23.11.2022.
//
import Foundation

struct NameContact{
    let id:UUID = UUID()
    let name: String
    let surName: String
    let telefon: String
    let mail: String
    
    var title: String {
        "\(name) \(surName)"
    }
}

extension NameContact: Hashable{
    static func getContactList() -> [NameContact] {
        var nameContactArrey: [NameContact] = []
        // в цикле проходим 10 раз и каждый раз создаем уникального чувака которго помещаем в пустойц массив
        
        for _ in 0...9 {
            let newChel =  NameContact (name: DataStore.shared.nameArey.randomElement()!,
                                        surName: DataStore.shared.surArey.randomElement()!,
                                        telefon: DataStore.shared.telArey.randomElement()!,
                                        mail: DataStore.shared.mailArey.randomElement()!
            )
            nameContactArrey.append(newChel)
            
        }
        return nameContactArrey
    }
        
        
    static func random() -> [NameContact] {
        var result : [NameContact] = []
        while result.count < NameContact.getContactList().count {
            let randomIndex = Int(arc4random_uniform(UInt32(NameContact.getContactList().count)))
            result.append(NameContact.getContactList()[randomIndex])
        }
        return result
    }
    
    
    
}

