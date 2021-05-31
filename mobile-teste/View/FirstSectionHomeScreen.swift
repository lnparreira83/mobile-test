//
//  FirstSectionHomeScreen.swift
//  mobile-teste
//
//  Created by Lucas Parreira on 31/05/21.
//

import SwiftUI

struct FirstSectionHomeScreen: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 15){
            Text("What do you need?")
                .font(.headline).bold()
                .padding(.leading,10)
            HStack{
                
                VStack{
                    Button(action:{}, label: {
                        Image(systemName: "stethoscope")
                            .resizable()
                            .frame(width:50,height:50)
                            .foregroundColor(.white)
                    })
                    Text("Diagnostic")
                        .foregroundColor(.white)
                }
                .frame(width: 100, height: 100)
                .background(Color(red: 196/255, green: 73/255, blue: 229/255))
                .border(Color(red: 196/255, green: 73/255, blue: 229/255), width: 1)
                .cornerRadius(12)
                .shadow(color: .gray, radius: 6, x: 0.0, y: 0.0)
                
                Spacer()
                VStack{
                    Button(action:{}, label: {
                        Image("patient")
                            .resizable()
                            .frame(width:50,height:50)
                    })
                    Text("Consultation")
                }
                .frame(width: 100, height: 100)
                .background(Color.white)
                .border(Color.white, width: 1)
                .cornerRadius(12)
                .shadow(color: .gray, radius: 6, x: 0.0, y: 0.0)
                
                Spacer()
                VStack{
                    Button(action:{}, label: {
                        Image("nurse")
                            .resizable()
                            .frame(width:50,height:50)
                    })
                    Text("Nurse")
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
}

struct FirstSectionHomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstSectionHomeScreen()
    }
}
