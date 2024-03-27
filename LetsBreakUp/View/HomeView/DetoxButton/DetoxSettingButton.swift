//
//  DetoxButton.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI
import FamilyControls

struct DetoxSettingButton: View {
    
    @State private var isPresented = false
    @State private var selection = FamilyActivitySelection()
    
    var body: some View {
        Button {
            
        } label: {
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
        .familyActivityPicker(
            isPresented: $isPresented,
            selection: $selection)
        
        
    }
}

#Preview {
    DetoxSettingButton()
}
