//
//  DetoxButton.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI

struct DetoxButton: View {
    
    var body: some View {
        Button {
            
        } label: {
            Text("디톡스 설정하기")
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
        .padding(30)
        
        
    }
}

#Preview {
    DetoxButton()
}
