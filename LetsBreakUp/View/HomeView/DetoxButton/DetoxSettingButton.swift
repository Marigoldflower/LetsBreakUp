//
//  DetoxButton.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI

struct DetoxSettingButton: View {
    @Binding var startTime: String
    @Binding var endTime: String
    
    var body: some View {
        NavigationLink(destination: DetoxSettingView(startTime: $startTime, endTime: $endTime)) {
            Text("디톡스 설정하기")
                .foregroundStyle(Color.breakUpBlack)
                .font(.breakUpFont(size: 16))
                .padding()
        }
        .buttonStyle(.borderedProminent)
        .tint(.breakUpMint)
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color.breakUpBlack, lineWidth: 2)
        )

    }
}

#Preview {
    DetoxSettingButton(startTime: .constant(""), endTime: .constant(""))
}
