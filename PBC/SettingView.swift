//
//  SettingView.swift
//  PBC
//
//  Created by 봉주헌 on 2023/03/06.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button {
                   self.presentationMode.wrappedValue.dismiss()
               } label: {
                   Text("로그아웃")
                   
               }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
