//
//  chartView.swift
//  skhuaz
//
//  Created by 봉주헌 on 2023/03/11.
//

import SwiftUI
import Charts

struct chartView: View{
    @Binding var point: Int
    var body: some View{
        if point == 1 {
            Text("1")
                .frame(width: 52, height: 15)
                .background(Color(hex: 0x9AC1D1))
        }
        else if point == 2 {
            Text("2")
                .frame(width: 104, height: 15)
                .background(Color(hex: 0x9AC1D1))
        }
        else if point == 3 {
            Text("3")
                .frame(width: 156, height: 15)
                .background(Color(hex: 0x9AC1D1))
        }
        else if point == 4 {
            Text("4")
                .frame(width: 208, height: 15)
                .background(Color(hex: 0x9AC1D1))
        }
        else if point == 5 {
            Text("5점테스트")
            .frame(width: 260, height: 15)
            .background(Color(hex: 0x9AC1D1))
        }
    }
}


//
//struct chartView_Previews: PreviewProvider {
//    static var previews: some View {
//        chartView()
//    }
//}
