//
//  Contact.swift
//  Homework_2.28_5_ContactList
//
//  Created by Ravil on 25.11.2022.
//


let names = [
    "Ravil",
    "Dmitriy",
    "Ivan",
    "Sergey",
    "Denis",
    "Nikita",
    "Alexey",
    "Ibragim",
    "Arkadiy",
    "Alexandr",
    "Nikolay",
    "Vasiliy",
    "Leonid",
    "Svyatoslav",
    "Moisey"
]

let surnames = [
    "Gabitov",
    "Kergilov",
    "Yashiryakov",
    "Popov",
    "Nigmatyanov",
    "Demidov",
    "Gribkov",
    "Aliev",
    "Rotenberg",
    "Levterov",
    "Soloviev",
    "Borisov",
    "Yakubovich",
    "Rastorguev",
    "Tsimmerman"
]

let phoneNumbers = [
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999",
    "+79999999999"
]

let emails = [
    "email1@email.com",
    "email2@email.com",
    "email3@email.com",
    "email4@email.com",
    "email5@email.com",
    "email6@email.com",
    "email7@email.com",
    "email8@email.com",
    "email9@email.com",
    "email10@email.com",
    "email11@email.com",
    "email12@email.com",
    "email13@email.com",
    "email14@email.com",
    "email15@email.com"
]

struct Contact {
    let name: String
    let surname: String
    let phoneNumber: String
    let emailAddress: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Contact {
    static func getContacts() -> [Contact] {
        var contacts: [Contact] = []
        
        let names = names.shuffled()
        let surnames = surnames.shuffled()
        let phoneNumbers = phoneNumbers.shuffled()
        let emails = emails.shuffled()
        
        let iterationCount = min(names.count, surnames.count, phoneNumbers.count, emails.count)

        for index in 0..<iterationCount {
            let contact = Contact(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                emailAddress: emails[index]
            )
            
            contacts.append(contact)
        }

        return contacts
    }
}
