//
//  SpecialistCardView.swift
//  mobile-teste
//
//  Created by Lucas Parreira on 30/05/21.
//

import SwiftUI

struct SpecialistCardView: View {
    let networkManager: NetworkManager
    
    var body: some View {
        VStack{
            GeometryReader { view in
                List{
                    Text("Heart Specialist").font(.headline)
                    Text("10 doctors were found").font(.subheadline)
                    
                    let sortedArraySpecialists = networkManager.specialists.sorted {
                        return $0.distance ?? 0.0 < $1.distance ?? 0.0
                    }
                    
                    
                    ForEach(sortedArraySpecialists
                    ){ specialist in
                        
                        HStack{
                            VStack{
                                let charNameSpecialist = specialist.name
                                Text(charNameSpecialist.prefix(1)).font(.title)
                            }
                            .frame(width: 40, height: 50)
                            .background(Color(.systemGray2))
                            .border(Color.gray, width: 1)
                            .clipShape(Circle())
                            .shadow(color: .gray, radius: 6, x: 0.0, y: 0.0)
                           
                            
                            VStack(alignment: .leading,spacing:4){
                                Text(specialist.name).foregroundColor(.black).font(.headline)
                                Text("Nearby \(specialist.distance ?? 0.0, specifier: "%.2f") miles")
                                    .foregroundColor(.gray)
                                Text(specialist.specialistDescription).foregroundColor(.gray)
                                
                                Spacer()
                                HStack(alignment:.center){
                                       
                                    Button(action: {}, label: {
                                            Text("Chat")
                                                .foregroundColor(.white)
                                                .bold()
                                        })
                                        .frame(width: 100, height: 45)
                                        .background(Color.purple)
                                        .border(Color.purple, width: 1)
                                        .cornerRadius(15)
                                        .padding(.leading, 1)
                                        
                                        Button(action: {}, label: {
                                            Text("Call")
                                                .foregroundColor(.black)
                                                .bold()
                                        })
                                        .frame(width: 100, height: 45)
                                        .background(Color.white)
                                        .border(Color.white, width: 1)
                                        .cornerRadius(15)
                                        .padding(.trailing, 125)
                                        .shadow(color: .gray, radius: 6, x: 0.0, y: 0.0)
                                    }
                             }
                        }
                        
                    
                     }
                
                  }
            
                
               }
             }
            
           }
        
        }
    


struct SpecialistCardView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialistCardView(networkManager: NetworkManager())
    }
}
