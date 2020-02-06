//
//  ListeColaborateur.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 06/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct ListeColaborateur: View {
    let array = ["Elisa SIMPLON.CO","Michel JACKSON", "Paul DUPONT", "Mary DE LA FONTAINE", "Anna-Lena DELARUE", "George BUSH", "John CARTER", "Barbara LAMINE"]
    @State private var searchText = ""
    @State private var showCancelButton: Bool = false
    
    var body: some View {
        
        
            VStack {
                // Search view
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        
                        TextField("search", text: $searchText, onEditingChanged: { isEditing in
                            self.showCancelButton = true
                        }, onCommit: {
                            print("onCommit")
                        }).foregroundColor(.primary)
                        
                        Button(action: {
                            self.searchText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
                    .foregroundColor(.secondary)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10.0)
                    
                    if showCancelButton  {
                        Button("Cancel") {
                            UIApplication.shared.endEditing(true) // this must be placed before the other commands here
                            self.searchText = ""
                            self.showCancelButton = false
                        }
                        .foregroundColor(Color(.systemBlue))
                    }
                }
                .padding(.horizontal)
                    .navigationBarHidden(showCancelButton) // .animation(.default) // animation does not work properly
                
                List {
                    // Filtered list of names
                    ForEach(array.filter{$0.hasPrefix(searchText) || searchText == ""}, id:\.self) {
                        searchText in
                        NavigationLink(destination: Colaborateur(), label :  {
                            Text(searchText)
                        })
                    }
                }
                .navigationBarTitle(Text("liste Colaborateur"), displayMode: .inline).navigationBarItems(
                    //leading: Image(systemName:"calendar"),
                    trailing: NavigationLink(destination: CreateCustomerView()) {
                        Image(systemName:"person.badge.plus")
                    }.buttonStyle(PlainButtonStyle()))
                    .resignKeyboardOnDragGesture()
            }
        
    }
}



struct ListeColaborateur_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListeColaborateur()
                .environment(\.colorScheme, .light)
            
            ListeColaborateur()
                .environment(\.colorScheme, .dark)
        }
    }
}
