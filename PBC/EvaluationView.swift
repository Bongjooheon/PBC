//
//  EvaluationView.swift
//  PBC
//
//  Created by 봉주헌 on 2023/03/06.
//
import Charts
import SwiftUI

struct Posting: Identifiable {
  let name: String
  let count: Int
  
  var id: String { name }
}

let postings: [Posting] = [
  .init(name: "발표량", count: 2),
  .init(name: "과제량", count: 8),
  .init(name: "실습량", count: 8),
  .init(name: "팀플유무", count: 5)
]

struct EvaluationView: View {
    
    @State private var input = ""
    @State private var review = ""
   
    var body: some View {
        VStack{
            HStack{
                TextField("강의를 입력해주세요", text: $input)
                    .padding(.leading)
                    .frame(width: 300, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                    .foregroundColor(Color(hex: 0xB19471))
                
                Image(systemName: "magnifyingglass")
                    .padding()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                
            }
            Divider()
            HStack{
                
                Text("촉촉한 초코칩님은 2023 - 1학기 입니다.")
                    .padding()
                    .padding(.trailing, 1)
                Button(action: {
                    
                }, label: {
                    
                    Image(systemName: "plus.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 30)
                        .padding(.trailing, 15)
                        .foregroundColor(.black)
                })
                
            }
        
        ScrollView{
                    VStack{
                        HStack{
                            Text("데이터베이스 | 홍은지")
                                .font(.system(size: 17)).bold()
                                .padding(.leading,2)
                                .padding(.trailing, 25)
                            Spacer()
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                            Spacer()
                        }
                        Chart {
                            ForEach(postings) { posting in
                                BarMark(
                                    x: .value("Name", posting.count),
                                    y: .value("Posting", posting.name)
                                )
                            }
                        }
                        TextField("강의총평 100자 이하", text: $review)
                            .padding(.bottom, 50)
                            .padding()
                            .frame(width: 320, height: 100)
                            .background(Color(uiColor: .secondarySystemBackground))
                            .cornerRadius(10)
                        
                    }
            
                    .padding()
                    .padding()
                    .foregroundColor(Color(hex: 0xB19471))
                            .padding()
                            
                    
                    VStack{
                        HStack{
                            Text("데이터베이스 | 홍은지")
                                .font(.system(size: 17)).bold()
                                .padding(.leading,2)
                                .padding(.trailing, 25)
                            Spacer()
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                            Spacer()
                        }
                        Chart {
                            ForEach(postings) { posting in
                                BarMark(
                                    x: .value("Name", posting.count),
                                    y: .value("Posting", posting.name)
                                )
                            }
                        }
                        TextField("강의총평 100자 이하", text: $review)
                            .padding(.bottom, 50)
                            .padding()
                            .frame(width: 320, height: 100)
                            .background(Color(uiColor: .secondarySystemBackground))
                            .cornerRadius(10)
                        
                    }
                    .padding()
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 3)
                            .padding()
                    )
        }
            
        }
        
    }
}
extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}



struct EvaluationView_Previews: PreviewProvider {
    static var previews: some View {
        EvaluationView()
    }
}
