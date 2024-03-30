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
        "자기 자신을 자제하는 사람은\n\n그가 즐거움을 찾아낼 수 있는만큼 \n\n쉽게 슬픔을 이겨낼 수 있다. - 오스카 와일드",
        "절제는 만족의 어머니다. - W. 고텔",
        "절제는 모든 시련에 저항하고 있다는 증거이다.\n\n자신의 마음을 잘 절제하는 사람이\n\n진짜 욕구를 충족시킬 수 있는 \n\n힘을 가진 사람이다. - 윌리엄 워즈워스",
        "진정한 행복은 절제에서 솟아난다. - 괴테",
        "운동과 절제는 노경에 이르기까지\n\n젊은 시절의 힘을\n\n어느정도 보존해 준다. - 키케로",
        "음식에 있어서의 절제는 건강을 보증하고,\n\n교제에 있어서의 절제는\n\n정신의 안정을 보증한다. - 쇼펜하우어",
        "절제는 신들이 준 최고의 고귀한 선물이다.\n\n- 에우리피데스",
        "절제란 단 한 번에 이루어지지 않고\n\n꾸준한 노력에 의해서만 가능하다.\n\n- 톨스토이",
        "행동만이 삶에 힘을 주고,\n\n절제만이 삶에 매력을 준다.\n\n- 장 폴 리히터",
        "오직 절제만이 인생을 아름답게 한다.\n\n- 독일 격언",
        "절제는 이성의 허리띠요, 격정의 신부이며,\n\n영혼의 힘이요, 선과 도덕의 기초이다.\n\n- 제레미 테일러",
        "절제가 우세하면 교육이 우세하고,\n\n절제가 실패하면 교육도 분명히 실패한다.\n\n- 호레이스 만",
       "모든 과도한 잔은 저주받은 것으로\n\n그 안의 성분들이 악마의 요소들이다.\n\n- 윌리엄 세익스피어",
       "절제와 노동은 인간에게 가장 진실한\n\n두 사람의 의사이다. - 루소",
        "금욕은 반드시 습관이 되어야 한다.\n\n금욕을 하면 할수록 덕을 그만큼 쌓게 되고,\n\n덕을 많이 쌓은 사람은\n\n억제치 못할 것이 없게 된다. -노자",
        "나는 지금까지 자신의 욕망을\n\n채우려고 힘쓰기보다,\n\n오히려 그것을 제한함으로써\n\n행복을 찾는 것을 배웠다. - J.S. 밀",
        "자기 자신을 정복하지 못한 사람은\n\n결코 자유로울 수가 없다. - 에픽테토스",
        "행복할 때의 미덕은 자제이고\n\n역경에 처했을 때의 미덕은 인내이다.\n\n- 프란시스 베이컨"
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
                                    Text(oneOfTheQuotes)
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
