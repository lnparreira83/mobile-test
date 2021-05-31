//
//  specialistTest.swift
//  mobile-teste
//
//  Created by Lucas Parreira on 31/05/21.
//

import XCTest
@testable import mobile_teste


class validatingSpecialistExistence: XCTestCase {
    private var app: XCUIApplication!
    
    override func setUpWithError() throws {
        
        continueAfterFailure = false

        
        XCUIApplication().launch()

    }

    func test_SpecialistView_shouldNotAcceptNull() throws {
        
        let networkManager = NetworkManager()
        
        for specialist in networkManager.specialists {
            if specialist.name.isEmpty {
                XCTFail("Name cannot be null")
            } else {
                print("ok")
            }
        }
        
    }
    
    func test_SpecialistView_shouldNotAcceptDescriptionNull() throws {
        
        let networkManager = NetworkManager()
        
        for specialist in networkManager.specialists {
            if specialist.specialistDescription.isEmpty {
                XCTFail("Distance cannot be null")
            } else {
                print("ok")
            }
        }
        
    }
    
    func test_SpecialistView_shouldNotAcceptActionNull() throws {
        
        let networkManager = NetworkManager()
        
        for specialist in networkManager.specialists {
            if specialist.actions.call != nil {
                XCTFail("Action call cannot be null")
            } else {
                print("ok")
            }
        }
        
    }
    
    func test_should_have_initial_value_not_0(){
        let networkManager = NetworkManager()
        var checkCountSpecialists : Bool
        if (networkManager.specialists.count > 0){
            checkCountSpecialists = true
        } else {
            checkCountSpecialists = false
        }
        XCTAssertFalse(checkCountSpecialists)
    }
    

}



class NetworkManager: ObservableObject {

    private let api_url = "https://raw.githubusercontent.com/PortalTelemedicina/mobile-test/main/api/"
    private let area = "list_specialist_heart.json"

    @Published var specialists = [SpecialistAPI]()

    init(){
        fetchSpecialist()
    }

    func fetchSpecialist(){

        guard let url = URL(string: api_url + area) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else { return }
            do{
                let result = try JSONDecoder().decode([SpecialistAPI].self, from: data)
                DispatchQueue.main.async {
                    self.specialists = result

                }
            } catch {
                print("Bunga - \(error)")
            }
        }.resume()
    }
}

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
