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
                    .fill(Color.breakUpWhite)
                    .stroke(Color.breakUpBlack, lineWidth: 2)
                    .frame(height: 220)
                    .padding()
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

#Preview {
    LifeQuotesView()
}
