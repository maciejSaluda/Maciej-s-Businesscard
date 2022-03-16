//
//  ContentView.swift
//  Maciej Card
//
//  Created by Maciej Sałuda on 16/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.88, green: 0.44, blue: 0.33)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("IMG-410")
                    .resizable()
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 10))
                    
        Text("Maciej Sałuda")
                    .font(Font.custom( "regular", size: 40))
                .bold()
                .foregroundColor(.white)
                Text("Junior iOS developer")
                    .font(Font.custom("Arial", size: 25))
                    .bold()
                    .foregroundColor(.white)
                Divider()
                BCardView(text: "667 866 393", imageName: "phone.fill")
                BCardView(text: "macsaluda@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone XS")
    }
}



