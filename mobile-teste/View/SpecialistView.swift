//
//  SpecialistView.swift
//  mobile-teste
//
//  Created by Lucas Parreira on 30/05/21.
//

import SwiftUI

struct SpecialistView: View {
    let networkManager : NetworkManager
    
    var body: some View {
        VStack(alignment:.leading){
                MenuSpecialistView()
                SpecialistCardView(networkManager: networkManager)
                    .padding()
                FooterView()
                Spacer()
                
            }
            .navigationBarHidden(true)
    }
}

struct MenuSpecialistView: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Button(action:{
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.left")
                        .padding(.leading,15)
                        .font(.system(size: 25))
                })
                
                Spacer()
                
                Button(action:{}, label:{
                    Image("filter-results-button")
                    .resizable()
                    .frame(width:25,height: 25)
                    .padding(.trailing,10)
                })
            }
        }
        
    }
}

struct SpecialistView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialistView(networkManager: NetworkManager())
    }
}
