//
//  myEvaluationView.swift
//  skhuaz
//
//  Created by 봉주헌 on 2023/03/12.
//

import Charts
import SwiftUI


struct myEvaluationView: View {
    @State private var input: String = ""
   
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    TextField("강의를 입력해주세요", text: $input)
                        .padding(.leading, 10)
                        .frame(width: 300, height: 50)
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(10)
                    
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(hex: 0x9AC1D1), lineWidth: 3))
                    Button(action: {}, label: {
                        Image("검색버튼")
                            .padding()
                            .frame(width: 40)
                    })
                }
                HStack{
                    Spacer()
                    NavigationLink(
                        destination: tabbarView(index: 1),
                        label: {

                            Text("강의평 전체 보기")
                                .foregroundColor(.black)
                                .frame(width: 150, height: 24)
                                .background(Color(hex: 0x9AC1D1))
                                .cornerRadius(5)
                                .padding(.leading, 200)
                        })
                   

                    Spacer()
                }
                ScrollView{
                    LisTView()
                    LisTView()
                        
                }
                .padding(.top, -20)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct myEvaluationView_Previews: PreviewProvider {
    static var previews: some View {
        myEvaluationView()
    }
}
