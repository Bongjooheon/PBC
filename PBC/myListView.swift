//
//  LisTView.swift
//  skhuaz
//
//  Created by 봉주헌 on 2023/03/11.
//
import Charts
import SwiftUI


struct myLisTView: View {
    @State private var input = ""
    @State private var review = ""
    var body: some View {
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
            }.foregroundColor(Color(hex: 0x9AC1D1))
            TextField("강의총평 100자 이하", text: $review)
                .padding(.bottom, 50)
                .padding([.leading, .top])
                .frame(width: 320, height: 70)
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
            HStack{
                Spacer()
                Button(action: {}, label: {
                    Text("수정")
                        .padding(.horizontal, 20)
                })
                .foregroundColor(.black)
                .frame(width: 85, height: 24)
                .background(Color(hex: 0x9AC1D1))
                .cornerRadius(10)
                Button(action: {}, label: {
                    Text("삭제")
                        .padding(.horizontal, 20)
                })
                .foregroundColor(.black)
                .frame(width: 85, height: 24)
                .background(Color(.red))
                .cornerRadius(10)
            }
        }
        .padding()
        .padding()
        .frame(width: 390, height: 300)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 3)
                .padding()
        )
    }
}

struct myLisTView_Previews: PreviewProvider {
    static var previews: some View {
        myLisTView()
    }
}
