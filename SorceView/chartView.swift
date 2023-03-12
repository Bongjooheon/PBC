//
//  chartView.swift
//  skhuaz
//
//  Created by 봉주헌 on 2023/03/11.
//

import SwiftUI
import Charts

struct chartView: View {
    var data: [CGFloat]
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(data, id: \.self) { value in
                GeometryReader { geometry in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 20, height: geometry.size.height * value)
                }
            }
        }
    }
}


//
//struct chartView_Previews: PreviewProvider {
//    static var previews: some View {
//        chartView()
//    }
//}
