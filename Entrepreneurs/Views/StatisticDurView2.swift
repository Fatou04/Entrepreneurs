//
//  StatisticDurView2.swift
//  Entrepreneurs
//
//  Created by Sylvie J on 05/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct StatisticDurView2: View {
    var body: some View {
        
            VStack(alignment: .center){
                Spacer()
                HStack{
                    Text("Sélectionner le mois")
                    Spacer()
                    Image(systemName:"chevron.left").foregroundColor(Color.blue)
                    Text(" Septembre 2019 ")
                        .font(.headline)
                        .fontWeight(.semibold)
                    Image(systemName:"chevron.right").foregroundColor(Color.blue)
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                HStack(alignment: .bottom){
                    Spacer()
                    ZStack {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 90.0, height: 50.0)
                        Text("10%")
                            .foregroundColor(Color.white)
                            .font(.title)
                            .fontWeight(.medium)
                    }
                    ZStack{
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 90.0, height: 200.0)
                        Text("30%")
                            .foregroundColor(Color.white)
                            .font(.title)
                            .fontWeight(.medium)
                    }
                    ZStack{
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 90.0, height: 100.0)
                        Text("20%")
                            .foregroundColor(Color.white)
                            .font(.title)
                            .fontWeight(.medium)
                    }
                    ZStack{
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 90.0, height: 300.0)
                        Text("40%")
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
            }.padding(.horizontal, 10)
            .navigationBarTitle(Text("Statistiques d'août 2019"), displayMode: .inline).navigationBarItems(
            trailing: Image(systemName:"paperclip").foregroundColor(Color.blue))
       
    }
    
}

struct StatisticDurView2_Previews: PreviewProvider {
    static var previews: some View {
        StatisticDurView2()
    }
}
