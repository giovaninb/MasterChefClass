//
//  Events.swift
//  MasterChefClass
//
//  Created by Rodrigo de Anhaia on 05/04/21.
//

let events = [Event(title: "ESPECIAL", chef: "Paola Corsella", recipe: "Massa Alfredo", local: " Auditório", hour: "  19:00 - 20:30", weekDay: "Quinta"),
              Event(title: "MASTERCHEFCLASS", chef: "Elisa Fernandes", recipe: "Copa lombo com abóbora e purê de abóbora", local: " Auditório", hour: "  20:30 - 22:00", weekDay: "Quinta"),
              
              Event(title: "ESPECIAL", chef: "Érick Jacquin", recipe: "Filé mignon com Tômpero e purê de batatas", local: " Auditório", hour: "  19:00 - 20:30", weekDay: "Sexta"),
              Event(title: "MASTERCHEFCLASS", chef: "Marcos Ripp Cozzella", recipe: "Bolos Básicos Pão-de-ló, Rocambole, Coberturas e Glacês", local: " Auditório", hour: "  20:30 - 22:00", weekDay: "Sexta"),
              
              Event(title: "ESPECIAL", chef: "Henrique Fogaça", recipe: "Cupim no pão ciabatta", local: " Auditório", hour: "  19:00 - 20:30", weekDay: "Sáb"),
              Event(title: "MASTERCHEFCLASS", chef: "Izabel Alvares", recipe: "Pizza com massa de couve-flor", local: " Auditório", hour: "  20:30 - 22:00", weekDay: "Sáb"),

              Event(title: "ESPECIAL", chef: "Érick Jacquin", recipe: "Creme brûlé do la brasserie", local: " Auditório", hour: "  19:00 - 20:30", weekDay: "Dom"),
              Event(title: "MASTERCHEFCLASS", chef: "Leonardo Young", recipe: "Camarão grelhado na churrasqueira ao molho de manteiga", local: " Auditório", hour: "  20:30 - 22:00", weekDay: "Dom")]


import Foundation


struct Event: Hashable {
    let title: String
    let chef: String
    let recipe: String
    let local: String
    let hour: String
    let weekDay: String
}
