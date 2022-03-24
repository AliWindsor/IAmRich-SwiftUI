//
//  ContentView.swift
//  IAmRichSwiftUI
//
//  Created by Alicia Windsor on 24/03/2022.
//

import SwiftUI

struct ContentView: View {
  
    var body: some View {
      ScrollRichView()
  //End of body
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}
struct ScrollRichView: View {

  var body: some View {
    
    ZStack{
      Color(.systemTeal).edgesIgnoringSafeArea(.all)
      
      ScrollView (.horizontal) {
        HStack (spacing: 50){
          ForEach ( 0..<5 ) { _ in
            RichView(text: "Shiny", text_color: Color(.systemTeal))
              .clipShape(Capsule())
          }
          RichView(text: "Red", text_color: .red)
            .clipShape(Capsule())
        }
      }
    }
//End of body
  }
}

struct RichView: View{
  var text : String
  var text_color : Color
  
  var body: some View {
    ZStack{
      Color(.white)
      
      VStack (spacing: 20){
        Image("diamond")
          .resizable(resizingMode: .tile)
          .aspectRatio(contentMode: .fit)
          .frame(width: 200.0, alignment: .center)
          
        Text("I Am " + text)
          .font(.system(size: 40))
          .fontWeight(.bold)
          .foregroundColor(text_color)
      }
      .padding(20)
    }
      
//End of body
  }
}
