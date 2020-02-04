//
//  CustomerCardView.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct CustomerCardView: View {
    var body: some View {
        
            ZStack{
                VStack (spacing: 40) {
                    VStack{
                        HStack{
                            Text("")
                                .navigationBarTitle("Contact", displayMode: .inline)
                                .navigationBarItems(leading: Text("Retour"),
                                                    trailing: Text("Modifer"))
                        }
                        
                        HStack{
                            Image("image")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 150.0, height:160.0)
                        }
                        
                        VStack(spacing: 10) {
                            HStack{
                                Text("Steev")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("JOBS")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                            HStack{
                                Text("APPLE")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                        }
                        HStack {
                            Image(systemName: "envelope")
                            Text(" ")
                            Image(systemName: "phone.arrow.up.right")
                            Text(" ")
                            Image(systemName: "message")
                            Text(" ")
                            Image(systemName: "phone.circle")
                        }
                        Spacer()
                    }
                    
                    VStack(alignment: .leading, spacing: 20){
                        Text("Téléphone   0629430647")
                        Text("Email            steve.job@apple.com")
                        Text("Adresse")
                        Text("2 Avenue du General de Gaule,                 93110,Rony-Sous-Bois")
                        
                    }
                    .padding()
                    
                    VStack(alignment: .leading, spacing: -20){
                        HStack{
                            Text("Note :")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.orange)
                                .padding()
                            Spacer()
                        }
                        ZStack{
                            Color.white
                                .frame(width: 380.0, height: 130.0)
                                .border(Color.black, width: 1)
                                .padding()
                            VStack(alignment: .leading, spacing: 10){
                                Text("Contract Itunes Terminé. Contrat Safari en cours de réalisasion.")
                                    .fontWeight(.ultraLight)
                            }
                        }
                        Spacer()
                    }
                }
            }
        
    }
}

struct CustomerCardView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomerCardView()
        }
    }
}
