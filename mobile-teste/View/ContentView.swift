//
//  ContentView.swift
//  mobile-teste
//
//  Created by Lucas Parreira on 29/05/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var networkManager = NetworkManager()
    
    var body: some View {
        GeometryReader{ view in
            
        NavigationView{
            
            VStack(alignment:.leading){
                VStack(alignment:.leading,spacing:5){
                    Text("Hello,")
                    Text("Lorelle Luna").font(.title)
                    
                }
                .padding(.leading,35)
                .padding(.bottom,(view.size.height)/250)
                
                VStack(alignment:.leading, spacing:25){
                    
                    SpecialistsHomeView(networkManager: NetworkManager())
                    
                }
                .padding(.leading,25)
                
                
         
                VStack{
                    
                    FirstSectionHomeScreen()
                    
                    SecondSectionHomeScreen()
                    
                }
                .padding(.leading, 30)
                .padding(.bottom,5)
//                .padding(.bottom,(view.size.height)/14)
                Spacer()
                FooterView()
                .padding(.bottom,(view.size.height)/6)
                    .padding(.leading,15)
                
            }
            .onAppear {
                networkManager.fetchSpecialist()
            }
        }
      }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
