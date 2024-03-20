//
//  LifeQuotesView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI

struct LifeQuotesView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 18)
            .fill(Color.breakUpYellow)
            .stroke(Color.breakUpBlack, lineWidth: 2)
            .frame(width: .infinity, height: 110)
            .padding()
            .overlay {
                VStack {
                    Text("📚 Life Quotes 📚")
                        .font(.breakUpFont(size: 17))
                    Text("절제는 모든 덕의 근본이다. - 플라톤")
                        .font(.breakUpFont(size: 17))
                        .padding()
                }
            }
    }
}

#Preview {
    LifeQuotesView()
}
