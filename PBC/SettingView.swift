//
//  SettingView.swift
//  PBC
//
//  Created by 봉주헌 on 2023/03/06.
//

import SwiftUI

struct SettingView: View {
    
    var body: some View {
        Button {
            sendLogoutRequest()
               } label: {
                   Text("로그아웃")
                   
               }
    }
}
func sendLogoutRequest() {
    let url = URL(string: "http://skhuaz.duckdns.org/users/logout")!
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            print("Error: \(error.localizedDescription)")
            return
        }

        if let response = response as? HTTPURLResponse,
           (200..<300).contains(response.statusCode) {
            print("로그아웃 성공")
            DispatchQueue.main.async {
                // UI 업데이트는 메인 스레드에서 실행되어야 함
                // 성공 메시지를 출력하는 Alert를 띄움
                let alert = UIAlertController(title: "Success", message: "로그아웃 되었습니다.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
            }
        } else {
            print("로그아웃 실패")
            DispatchQueue.main.async {
                // 실패 메시지를 출력하는 Alert를 띄움
                let alert = UIAlertController(title: "Error", message: "로그아웃 실패했습니다.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
            }
        }
    }.resume()
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
