//
//  NetworkManager.swift
//  mobile-teste
//
//  Created by Lucas Parreira on 29/05/21.
//

import Foundation

class NetworkManager: ObservableObject {
    
    private let api_url = "https://raw.githubusercontent.com/PortalTelemedicina/mobile-test/main/api/"
    private let area = "list_specialist_heart.json"
    
    @Published var specialists = [SpecialistAPI]()
    //@Published var loading = false
    
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






































