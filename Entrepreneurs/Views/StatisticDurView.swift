//
//  StatisticDurView.swift
//  Entrepreneurs
//
//  Created by Sylvie J on 05/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct StatisticDurView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                Spacer()
                HStack{
                    Text("Sélectionner le mois")
                    Spacer()
                    Image(systemName:"chevron.left").foregroundColor(Color.blue)
                    Text(" Août 2019 ")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    NavigationLink(destination:StatisticDurView2()) {
                        Image(systemName:"chevron.right")
                    }.foregroundColor(Color.blue)
                    .buttonStyle(PlainButtonStyle())
                    .resignKeyboardOnDragGesture()
                    
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                HStack(alignment: .bottom){
                    Spacer()
                    ZStack {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 90.0, height: 50.0)
                        Text("8%")
                            .foregroundColor(Color.white)
                            .font(.title)
                            .fontWeight(.medium)
                    }
                    ZStack{
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 90.0, height: 150.0)
                        Text("30%")
                            .foregroundColor(Color.white)
                            .font(.title)
                            .fontWeight(.medium)
                    }
                    ZStack{
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 90.0, height: 250.0)
                        Text("50%")
                            .foregroundColor(Color.white)
                            .font(.title)
                            .fontWeight(.medium)
                    }
                    ZStack{
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 90.0, height: 70.0)
                        Text("12%")
                            .foregroundColor(Color.white)
                            .font(.title)
                            .fontWeight(.medium)
                    }
                }
                
                HStack(spacing: 53){
                    Text("Perso")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                    
                    Text("Admin")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                    
                    Text("RdV")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                    
                    Text("Travail")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                }
                .padding(.leading, 10.0)
                Spacer()
            }
            .padding(.horizontal, 10)
            .navigationBarTitle(Text("Statistiques d'août 2019"), displayMode: .inline).navigationBarItems(
            trailing: Image(systemName:"paperclip").foregroundColor(Color.blue))
        }
        .tabItem {
        Image(systemName: "chart.pie")
            Text("Stats")}
    }
    
}

struct StatisticDurView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticDurView()
    }
}
