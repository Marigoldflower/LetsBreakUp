//
//  LifeQuotesView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/19/24.
//

import SwiftUI

struct LifeQuotesView: View {
    private let quotes = [
        "절제는 모든 덕의 근본이다. - 플라톤",
        "자기 스스로를 다스릴 수 없는 사람은\n\n 자유로울 수 없다. - 피타고라스",
        "자기 자신을 자제하는 사람은\n\n그가 즐거움을 찾아낼 수 있는만큼 \n\n쉽게 슬픔을 이겨낼 수 있다. - 오스카 와일드"
    ]
    
    private var oneOfTheQuotes: String {
        quotes.randomElement() ?? "명언이 없습니다"
    }
    
    var body: some View {
        ZStack {
            VStack {
                RoundedRectangle(cornerRadius: 18)
                    .fill(Color.breakUpYellow)
                    .stroke(Color.breakUpBlack, lineWidth: 2)
                    .frame(width: .infinity, height: .infinity)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 18)
                            .fill(Color.breakUpBackground)
                            .stroke(Color.breakUpBlack, lineWidth: 2)
                            .frame(width: .infinity, height: .infinity)// 높이 110
                            .padding(30)
                            .overlay {
                                VStack {
                                    Text("📚 Life Quotes 📚")
                                        .font(.breakUpFont(size: 17))
                                        .foregroundStyle(Color.breakUpRed)
                                    Text(oneOfTheQuotes)
                                        .font(.breakUpFont(size: 17))
                                        .foregroundStyle(Color.breakUpBlack)
                                        .padding()
                                }
                            }
                    }
                
                Text("안녕")
                    .padding(30)
                Text("Swift")
                    .padding(30)
            }
        }
    }
}

#Preview {
    LifeQuotesView()
}
