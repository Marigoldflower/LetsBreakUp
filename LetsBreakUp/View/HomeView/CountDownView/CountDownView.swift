//
//  CountDownView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/26/24.
//

import SwiftUI

struct CountDownView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 18)
            .fill(Color.breakUpYellow)
            .stroke(Color.breakUpBlack, lineWidth: 2)
            .frame(width: .infinity, height: 260)
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 18)
                    .fill(Color.breakUpBackground)
                    .stroke(Color.breakUpBlack, lineWidth: 2)
                    .frame(width: .infinity, height: 240)// 높이 110
                    .padding(30)
                    .overlay {
                        VStack(spacing: 30) {
                            
                            VStack(spacing: 10) {
                                HStack {
                                    Text("디톡스 시작 시간 -")
                                        .font(.breakUpFont(size: 20))
                                        .foregroundStyle(Color.breakUpBlack)
                                    Text("03:00")
                                        .font(.breakUpFont(size: 23))
                                        .foregroundStyle(Color.breakUpOrange)
                                }
                                
                                HStack {
                                    Text("디톡스 종료 시간 -")
                                        .font(.breakUpFont(size: 20))
                                        .foregroundStyle(Color.breakUpBlack)
                                    Text("05:00")
                                        .font(.breakUpFont(size: 23))
                                        .foregroundStyle(Color.breakUpOrange)
                                }
                            }
                            
                            VStack(spacing: 15) {
                                Text("종료시간까지")
                                    .font(.breakUpFont(size: 30))
                                    .foregroundStyle(Color.breakUpBlack)
                                Text("05:00:00 남음")
                                    .font(.breakUpFont(size: 30))
                                    .foregroundStyle(Color.breakUpRed)
                            }
                        }
                    }
            }
    }
}

#Preview {
    CountDownView()
}
