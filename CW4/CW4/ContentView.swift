//
//  ContentView.swift
//  CW4
//
//  Created by Jenan Alibrahim on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var items  = ["apple","banana","cola","kitkat"]
    
    var body: some View {
        VStack{
            List(items, id:\.self){item in
                HStack{
                    Image(item)
                        .resizable()
                        .frame(width: 40 , height: 40)
                    
                    Text(item)
                }
            }
            
            
            TextField("Enter the item name", text: $name)
                .frame(width: 200, height: 45)
                .multilineTextAlignment(.center)
            
            
            HStack{
                
                Spacer()
                
                Button(action:{
                    items.append(items.randomElement() ?? "")
                    
                }) {
                    Image(systemName: "questionmark")
                }
                
                Spacer()
                
                Button(action:{
                    items.append(name)
                }) {
                    Text("Add")
                }
                
                Spacer()
                
                Button(action:{
                    items.remove(at:0)
                }) {
                    Text("remove")
                }
                
                Spacer()
                
            }
            
            Spacer()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
