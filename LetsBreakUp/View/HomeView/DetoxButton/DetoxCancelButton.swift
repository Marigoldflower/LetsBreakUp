//
//  DetoxCancelButton.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/26/24.
//

import SwiftUI

struct DetoxCancelButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("디톡스 취소하기")
                .foregroundStyle(Color.breakUpBlack)
                .font(.breakUpFont(size: 16))
                .padding()
        }
        .buttonStyle(.borderedProminent)
        .tint(.breakUpGray)
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color.breakUpBlack, lineWidth: 2)
        )
    }
}

#Preview {
    DetoxCancelButton()
}
