//
//  BCardView.swift
//  Maciej Card
//
//  Created by Maciej Sałuda on 16/03/2022.
//

import SwiftUI

struct BCardView: View {
    
    let text : String
    let imageName : String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack
                     {
                Image(systemName: imageName).foregroundColor(.gray)
                Text (text).font(Font.custom( "Arial", size: 20))
                    .foregroundColor(.black)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct BCardView_Previews: PreviewProvider {
    static var previews: some View {
        BCardView(text: "667866393", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
