//
//  DayPlanningView.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct DayPlanningView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("7 février 2020")
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .lineLimit(-150)
                    .padding(.leading, -165.0)
                    .padding(.top, 30.0)
                
                HStack{
                    HStack{
                        VStack{
                           /* Text("H")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .padding(.top, 5.0)*/
                            Divider()
                                
                                .frame(width: 40.0)
                            VStack{
                                Text("6")
                                Divider()
                                Text("7")
                                Divider()
                                Text("8")
                                Divider()
                            }.font(.footnote)
                            VStack{
                                Text("8")
                                Divider()
                                Text("9")
                                Divider()
                                Text("10")
                                Divider()
                            }.font(.footnote)
                            VStack{
                                Text("11")
                                Divider()
                                Text("12")
                                Divider()
                                Text("13")
                                Divider()
                            }.font(.footnote)
                            VStack{
                                Text("14")
                                Divider()
                                Text("15")
                                Divider()
                                Text("16")
                                Divider()
                            }.font(.footnote)
                            VStack{
                                Text("17")
                                Divider()
                                Text("18")
                                Divider()
                                Text("19")
                                Divider()
                            }.font(.footnote)
                            VStack{
                                Text("20")
                                Divider()
                                Text("21")
                                Divider()
                                Text("22")
                                Divider()
                            }.font(.footnote)
                            VStack{
                                Text("23")
                                Divider()
                                Text("24")
                                Divider()
                            }.font(.footnote)
                        }.border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                        VStack{
                            /*Text("7 février 2020")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .padding(.top, 5.0)*/
                            
                            Rectangle()
                                .fill(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                                .frame(width: 280.0, height: 50.0)
                                .padding(1.0)
                            
                            ZStack{
                                Rectangle()
                                    .fill(Color.green)
                                    .frame(width: 280.0, height: 50.0)
                                    .padding(1.0)
                                Text("Rdv dentiste")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                    .fontWeight(.medium)
                            }
                            
                            ZStack{
                                Rectangle()
                                    .fill(Color.red)
                                    .frame(width: 280.0, height: 100.0)
                                    .padding(1.0)
                                NavigationLink(destination: ActivityView3()) {
                                    Text("Casino")
                                        .font(.headline)
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                            ZStack{
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 280.0, height: 100.0)
                                    .padding(1.0)
                                Text("Compta")
                                    .foregroundColor(Color.white)
                                    .font(.headline)
                                    .fontWeight(.medium)
                            }
                            Rectangle()
                                .fill(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                                .frame(width: 280.0, height: 50.0)
                                .padding(1.0)
                            ZStack{
                                Rectangle()
                                    .fill(Color.green)
                                    .frame(width: 280.0, height: 100.0)
                                    .padding(1.0)
                                Text("Skype dév")
                                    .foregroundColor(Color.white)
                                    .font(.headline)
                                    .fontWeight(.medium)
                            }
                            ZStack{
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 280.0, height: 50.0)
                                    .padding(1.0)
                                Text("Impôts")
                                    .foregroundColor(Color.white)
                                    .font(.headline)
                                    .fontWeight(.medium)
                            }
                            ZStack{
                                Rectangle()
                                    .fill(Color.orange)
                                    .frame(width: 280.0, height: 100.0)
                                    .padding(1.0)
                                Text("MeetUp")
                                    .foregroundColor(Color.white)
                                    .font(.headline)
                                    .fontWeight(.medium)
                            }
                            
                        }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .padding(.vertical, 10 )
                        
                    }
                    .padding(.horizontal, 30.0)
                    .padding(.top, -20.0)
                        
                    .navigationBarTitle(Text("Vue Jour"), displayMode: .inline)
                    .navigationBarItems(
                        leading: NavigationLink(destination: WeekPlanningView()) {
                            Image(systemName: "calendar") }
                            .foregroundColor(Color.blue) .buttonStyle(PlainButtonStyle()).resignKeyboardOnDragGesture(),
                        trailing: NavigationLink(destination: CreateActivityView()) {
                        Image(systemName:"text.badge.plus")
                    }.foregroundColor(Color.blue)
                        .buttonStyle(PlainButtonStyle()))
                    .resignKeyboardOnDragGesture()
                    
                    
                    
                    
                    
                    
                }
                Spacer()
            }
            
        }
        .tabItem {
                Image(systemName: "calendar")
                Text("Journée")
        }
        
    }
}




struct DayPlanningView_Previews: PreviewProvider {
    static var previews: some View {
        DayPlanningView()
    }
}


