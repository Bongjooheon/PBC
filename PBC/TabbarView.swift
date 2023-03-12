//
//  TabbarView.swift
//  PBC
//
//  Created by 봉주헌 on 2023/03/06.
//

import SwiftUI

struct tabbarView: View {
    
    @State var index = 3
    var body: some View {
        TabView(selection: $index) {
            EvaluationView()
                .tabItem {
                  Image(systemName: "1.square.fill")
                  Text("강의평")
                }
                .tag(1)
              CurriculumView()
                .tabItem {
                  Image(systemName: "2.square.fill")
                  Text("선수과목제도")
                }
                .tag(2)
            MainView()
                .tabItem {
                  Image(systemName: "apple.logo")
                  Text("LOGO")
                }
                .tag(3)
            RootView()
              .tabItem {
                Image(systemName: "2.square.fill")
                Text("루트추천")
              }
              .tag(4)
            SettingView()
              .tabItem {
                Image(systemName: "gearshape")
                Text("설정")
              }
              .tag(5)
            
            }
            .font(.headline)
            .navigationBarHidden(true)
    }
}

struct tabbarView_Previews: PreviewProvider {
    static var previews: some View {
        
        tabbarView()
        
    }
}
