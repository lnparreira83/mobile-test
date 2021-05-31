//
//  SecondSectionHomeScreen.swift
//  mobile-teste
//
//  Created by Lucas Parreira on 31/05/21.
//

import SwiftUI

struct SecondSectionHomeScreen: View {
    var body: some View {
        HStack{
            
            VStack{
                Button(action:{}, label: {
                    Image("ambulance")
                        .resizable()
                        .frame(width:50,height:50)
                    
                })
                Text("Ambulance")
            }
            .frame(width: 100, height: 100)
            .background(Color.white)
            .border(Color.white, width: 1)
            .cornerRadius(12)
            .shadow(color: .gray, radius: 6, x: 0.0, y: 0.0)
            
            Spacer()
            VStack{
                Button(action:{}, label: {
                    Image("flask")
                        .resizable()
                        .frame(width:50,height:50)
                })
                Text("Lab Work")
            }
            .frame(width: 100, height: 100)
            .background(Color.white)
            .border(Color.white, width: 1)
            .cornerRadius(12)
            .shadow(color: .gray, radius: 6, x: 0.0, y: 0.0)
            
            Spacer()
            VStack{
                Button(action:{}, label: {
                    Image("medicine")
                        .resizable()
                        .frame(width:50,height:50)
                })
                Text("Medicine")
            }
            .frame(width: 100, height: 100)
            .background(Color.white)
            .border(Color.white, width: 1)
            .cornerRadius(12)
            .shadow(color: .gray, radius: 6, x: 0.0, y: 0.0)
            
            Spacer()
        }
    }
}

struct SecondSectionHomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondSectionHomeScreen()
    }
}
