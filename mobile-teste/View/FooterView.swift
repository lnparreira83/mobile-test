//
//  FooterView.swift
//  mobile-teste
//
//  Created by Lucas Parreira on 30/05/21.
//

import SwiftUI

struct FooterView: View {
    @Environment(\.presentationMode) var presentationMode
    var messageCount = "1"
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "menubar.rectangle")
                        .resizable()
                        .frame(width:20, height: 20)
                  })

                Text("Home").font(.system(size: 12))
            }
            .foregroundColor(.purple)
            
            Spacer()
            
            VStack{
                ZStack{
                    Button(action: {}, label: {
                        Image(systemName: "bubble.left")
                            .resizable()
                            .frame(width:20, height: 20)
                    })
                    Button(action:{}, label:{
                        Text(messageCount).font(.system(size: 14))
                            .foregroundColor(.white)
                    })
                    .frame(width: 20, height: 20)
                    .background(Color(.red))
                    .border(Color.gray, width: 1)
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 6, x: 0.0, y: 0.0)
                    .padding(.leading,55)
                }
                
                Text("Chats").font(.system(size: 12))
            }
            .foregroundColor(.gray)
            
            Spacer()
            
            VStack{
                Button(action: {}, label: {
                    Image(systemName: "bolt")
                        .resizable()
                        .frame(width:20, height: 20)
                })
                Text("Notifications").font(.system(size: 12))
            }
            .foregroundColor(.gray)
            
            Spacer()
            
            VStack{
                Button(action: {}, label: {
                    Image("menu")
                        .resizable()
                        .frame(width:20, height: 20)
                })
                Text("More").font(.system(size: 12))
            }
            .foregroundColor(.gray)
            
            Spacer()
            
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
