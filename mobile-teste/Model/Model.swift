//
//  Model.swift
//  mobile-teste
//
//  Created by Lucas Parreira on 29/05/21.
//

import Foundation

// MARK: - PortalTelemedicinaAPI
struct SpecialistAPI: Codable, Identifiable {
    let id = UUID()
    let name, specialistDescription: String
    let distance: Double?
    let actions: Actions

    enum CodingKeys: String, CodingKey {
        case name
        case specialistDescription = "description"
        case distance, actions
    }
}

// MARK: - Actions
struct Actions: Codable {
    let chat: String
    let call: String?
}

var example : SpecialistAPI {
    SpecialistAPI(name: "Fulano", specialistDescription: "Demartologist", distance: 0.4, actions: Actions(chat: "blablabla", call: "04199999999"))
}

