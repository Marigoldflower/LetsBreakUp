//
//  DetoxListView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/26/24.
//

import SwiftUI

struct DetoxListView: View {
    @State private var detoxAppCount = 0
    
    var body: some View {
        RoundedRectangle(cornerRadius: 18)
            .fill(Color.breakUpYellow)
            .stroke(Color.breakUpBlack, lineWidth: 2)
            .frame(width: .infinity, height: 140)
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 18)
                    .fill(Color.breakUpBackground)
                    .stroke(Color.breakUpBlack, lineWidth: 2)
                    .frame(width: .infinity, height: 120)// 높이 110
                    .padding(30)
                    .overlay {
                        VStack(spacing: 30) {
                            if detoxAppCount == 0 {
                                Text("선택된 디톡스 앱이 없습니다")
                                    .font(.breakUpFont(size: 15))
                                    .foregroundStyle(Color.breakUpBlack)
                                
                            } else {
                                
                            }
                        }
                    }
            }
    }
}

#Preview {
    DetoxListView()
}
