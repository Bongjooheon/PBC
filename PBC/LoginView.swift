//
//  LoginView.swift
//  PBC
//
//  Created by 봉주헌 on 2023/03/06.
//

import SwiftUI

struct LoginModel: Codable {
    let email: String
    let password: String
}

struct LoginView: View {
    
    @State var sessionID = ""
    @State private var user_id: String = ""
    @State private var user_password: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "apple.logo")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.bottom)
                TextField("아이디를 입력해주세요", text: $user_id)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                SecureField("비밀번호를 입력해주세요", text: $user_password)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                Button(action: {
                    sendLoginRequest(email: user_id, password: user_password) { isSuccess in
                        if isSuccess {
                            print("로그인 성공")
                        } else {
                            print("로그인 실패")
                        }
                    }
                }, label: {
                    Text("로그인")
                        .frame(width: 330, height: 10)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hex: 0x9AC1D1))
                        .cornerRadius(10)
                })
                .padding(.top)
                HStack{
                    Spacer()
                    NavigationLink(
                        destination: FindView(),
                        label:{
                            Text("아이디/비밀번호 찾기")
                                .font(.system(size: 10))
                                .foregroundColor(Color.gray)
                        })
                    NavigationLink(
                        destination: SignUpView(),
                        label:{
                            Text("회원가입")
                                .font(.system(size: 10))
                                .foregroundColor(Color.gray)
                                .padding(.trailing)
                        })
                    
                }
                
            }
        }
    }
    func sendLoginRequest(email: String, password: String, completion: @escaping (Bool) -> ()) {
           let url = URL(string: "http://skhuaz.duckdns.org/users/login")!
           var request = URLRequest(url: url)
           request.httpMethod = "POST"
           
           let loginModel = LoginModel(email: email, password: password)
           request.httpBody = try? JSONEncoder().encode(loginModel)
           request.addValue("application/json", forHTTPHeaderField: "Content-Type")
           
           URLSession.shared.dataTask(with: request) { data, response, error in
               if let error = error {
                   print("Error: \(error.localizedDescription)")
                   completion(false)
                   return
               }
               
               if let response = response as? HTTPURLResponse,
                  (200..<300).contains(response.statusCode),
                  let data = data,
                  let responseModel = try? JSONDecoder().decode(LoginResponseModel.self, from: data) {
                   print("로그인 API 호출 성공")
                   sessionID = responseModel.sessionID // 세션 ID 저장
                   completion(true)
               } else {
                   print("로그인 API 호출 실패")
                   completion(false)
               }
           }.resume()
       }
   }

struct LoginResponseModel: Codable {
    let sessionID: String
    // 이외의 필요한 정보들을 선언해줄 수 있음
}
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }

