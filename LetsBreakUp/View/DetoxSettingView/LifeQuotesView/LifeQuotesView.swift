//
//  LifeQuotesView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI

struct LifeQuotesView: View {
    private let lifeQuotesViewModel = LifeQuotesViewModel()
    
    var body: some View {
        ZStack {
            VStack {
                RoundedRectangle(cornerRadius: 18)
                    .fill(Color.breakUpYellow)
                    .stroke(Color.breakUpBlack, lineWidth: 2)
                    .frame(height: 220)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 18)
                            .fill(Color.breakUpBackground)
                            .stroke(Color.breakUpBlack, lineWidth: 2)
                            .frame( height: 200)// 높이 110
                            .padding(30)
                            .overlay {
                                VStack {
                                    Text("📚 Life Quotes 📚")
                                        .font(.breakUpFont(size: 17))
                                        .foregroundStyle(Color.breakUpRed)
                                    Text(lifeQuotesViewModel.oneOfTheQuotes)
                                        .font(.breakUpFont(size: 17))
                                        .foregroundStyle(Color.breakUpBlack)
                                        .padding()
                                }
                            }
                    }
            }
        }
    }
}

#Preview {
    LifeQuotesView()
}
