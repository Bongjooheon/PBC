//
//  EvaluationView.swift
//  PBC
//
//  Created by 봉주헌 on 2023/03/06.
//
import Charts
import SwiftUI

struct EvaluationView: View {
    @State private var input = ""
    
    var body: some View {
        VStack{
            HStack{
                TextField("강의를 입력해주세요", text: $input)
                    .padding(.leading)
                    .frame(width: 300, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                
                Image(systemName: "magnifyingglass")
                    .padding()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                
            }
            Divider()
            HStack{
                
                Text("촉촉한 초코칩님은 2023 - 1학기 입니다.")
                    .padding()
                Image(systemName: "plus.circle")
                    .padding()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
            }
            HStack{
                Text("데이터베이스 | 홍은지")
                    .padding(.leading)
                
            }
        }
    }
}

struct EvaluationView_Previews: PreviewProvider {
    static var previews: some View {
        EvaluationView()
    }
}
