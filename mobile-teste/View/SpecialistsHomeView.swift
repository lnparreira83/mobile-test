//
//  SpecialistsHomeView.swift
//  mobile-teste
//
//  Created by Lucas Parreira on 31/05/21.
//

import SwiftUI

struct SpecialistsHomeView: View {
    @StateObject var networkManager = NetworkManager()
    
    var body: some View {
        
        VStack(alignment:.leading){
            Spacer()
        Text("Specialists")
            .font(.headline).bold()
            .padding(.leading,10)
        HStack{
            
            NavigationLink(destination:SpecialistView(networkManager: networkManager)){
                VStack(alignment:.leading){
                    Button(action:{}, label: {
                        Image("heart-shape-outline-with-lifeline")
                            .resizable()
                            .frame(width:35,height:35)
                            .background(Color.white)
                            .cornerRadius(8)
                            
                    })
                    Text("Heart").font(.system(size: 20)).foregroundColor(.white)
                        .padding(.leading,5)
                    Text("Specialist").font(.system(size: 20)).foregroundColor(.white)
                        .padding(.leading,5)
                    Text("\(networkManager.specialists.count) doctors").font(.system(size: 10))
                        .foregroundColor(.white)
                        .bold()
                        .padding(.leading,20)
                    

                }
                .frame(width: 110, height: 140)
                .background(Color(red: 229/255, green: 73/255, blue: 94/255))
                .border(Color(red: 229/255, green: 73/255, blue: 94/255), width: 1)
                .cornerRadius(12)
                .shadow(color: .gray, radius: 6, x: 0.0, y: 0.0)
                
            }
                
            
            VStack{
                Button(action:{}, label: {
                    Image("tooth")
                        .resizable()
                        .frame(width:35,height:35)
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding(.trailing,50)
                })
                Text("Dental")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.trailing,25)
                Text("Care")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.trailing,40)
                Text("\(networkManager.specialists.count) doctors").font(.system(size: 10))
                    .foregroundColor(.white).bold()
            }
            .frame(width: 110, height: 140)
            .background(Color(red: 246/255, green: 175/255, blue: 61/255))
            .border(Color(red: 246/255, green: 175/255, blue: 61/255), width: 1)
            .cornerRadius(12)
            .shadow(color: .gray, radius: 6, x: 0.0, y: 0.0)
            
            
            VStack{
                Button(action:{}, label: {
                    Image("pimples")
                        .resizable()
                        .frame(width:35,height:35)
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding(.trailing,50)
                })
                Text("Demartologist")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .padding(.trailing,5)
                Text("Specialist")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.trailing,20)
                Text("\(networkManager.specialists.count) doctors").font(.system(size: 10))
                    .foregroundColor(.white)
                    .bold()
            }
            .frame(width: 110, height: 140)
            .background(Color(red: 196/255, green: 73/255, blue: 229/255))
            .border(Color(red: 196/255, green: 73/255, blue: 229/255), width: 1)
            .cornerRadius(12)
            .shadow(color: .gray, radius: 6, x: 0.0, y: 0.0)
            Spacer()
        }
    Spacer()
    }
  }
}

struct SpecialistsHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialistsHomeView(networkManager: NetworkManager())
    }
}
