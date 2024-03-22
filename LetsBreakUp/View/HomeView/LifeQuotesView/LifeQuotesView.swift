//
//  LifeQuotesView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI

struct LifeQuotesView: View {
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.breakUpBrown)
                .stroke(Color.breakUpBlack, lineWidth: 2)
                .frame(width: .infinity, height: 130)
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 18)
                        .fill(Color.breakUpGreenBoard)
                        .stroke(Color.breakUpBlack, lineWidth: 2)
                        .frame(width: .infinity, height: 110)// 높이 110
                        .padding(30)
                        .overlay {
                            VStack {
                                Text("📚 Life Quotes 📚")
                                    .font(.breakUpFont(size: 17))
                                    .foregroundStyle(Color.white)
                                Text("절제는 모든 덕의 근본이다. - 플라톤")
                                    .font(.breakUpFont(size: 17))
                                    .foregroundStyle(Color.white)
                                    .padding()
                            }
                        }
                }
        }
    }
}

#Preview {
    LifeQuotesView()
}
