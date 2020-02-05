//
//  ContentView.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                
            DayPlanningView() //planning view
            
            CustomerListView()
                
            
            StatisticDurView()
            
            /*
            StatisticsView(viewModel: StatisticsViewModel())
                .tabItem {
                    Image(systemName: "chart.pie")
                    Text("Stats")
            }*/
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
