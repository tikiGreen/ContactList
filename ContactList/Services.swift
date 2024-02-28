//
//  Services.swift
//  ContactList
//
//  Created by User on 28.02.2024.
//

import Foundation

final class DataStore {
    
    private var firstNames = ["Иван", "Андрей", "Владимир", "Сергей", "Станислав", "Никита", "Максим", "Анатолий", "Алексей", "Матвей"]
    private var secondaryNames = ["Петров", "Иванов", "Попов", "Малахов", "Тей", "Бобров", "Савчук", "Шевчук", "Змановский", "Бабенко"]
    private var phones = ["+79010030505", "+79010015631", "+79010016306", "+79010026332", "+79010065621", "+79010015176", "+79010081458", "+79010098503", "+79010021382", "+79010092979"]
    private var emailAdresses = ["1_@mail.ru", "2_@mail.ru", "3_@mail.ru", "4_@mail.ru", "5_@mail.ru", "6_@mail.ru", "7_@mail.ru", "8_@mail.ru", "9_@mail.ru", "10_@mail.ru"]

    func getContacts() -> [Contact] {
        
        firstNames.shuffle()
        secondaryNames.shuffle()
        phones.shuffle()
        emailAdresses.shuffle()
        
        var result: [Contact] = []
        
        for index in 0..<10 {
            result.append(
                Contact(
                    firstName: firstNames[index],
                    secondaryName: secondaryNames[index],
                    numberPhone: phones[index],
                    email: emailAdresses[index]
                )
            )
            
        }
        
        return result
    }
    
}

