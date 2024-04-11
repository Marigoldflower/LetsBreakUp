//
//  AlertNotificationView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/30/24.
//

import SwiftUI

struct AlertNotificationView: View {
    @State private var isSwitchOn: Bool = false
    
    var body: some View {
        HStack {
            Text("디톡스 종료 시 알림")
                .font(.breakUpFont(size: 15))
                .foregroundStyle(Color.breakUpBlack)
                .padding(.leading, 20)
            
            Spacer()
            
            
            Toggle(isOn: $isSwitchOn) {
                EmptyView()
            }
            .tint(Color.breakUpPink)
            .padding(.trailing, 20)
        }
    }
}

#Preview {
    AlertNotificationView()
}
