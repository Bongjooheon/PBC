//
//  meNuView.swift
//  skhuaz
//
//  Created by 봉주헌 on 2023/03/11.
//

import SwiftUI

struct meNuView : View {
    @State private var Subject_name: String = "과목명"
    
    var body: some View {
        HStack{
            Menu("\(Subject_name)") {
                Button("소프트웨어공학",
                       action: { Subject_name = "소프트웨어공학"})
                Button("정보통신공학",
                       action: { Subject_name = "정보통신공학"})
                Button("컴퓨터공학",
                       action: { Subject_name = "컴퓨터공학"})
                Button("인공지능",
                       action: { Subject_name = "인공지능"})
            }
            .foregroundColor(.gray)
            .padding()
            .frame(width: 170, height: 50)
            .background(Color(uiColor: .secondarySystemBackground))
            .cornerRadius(10)
            
        }
    }
}
struct meNuView_Previews: PreviewProvider {
    static var previews: some View {
        meNuView()
    }
}
