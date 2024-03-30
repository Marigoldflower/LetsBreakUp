//
//  StoppingAppView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/29/24.
//

import SwiftUI
import FamilyControls

struct StoppingAppView: View {
    @StateObject var stoppingAppViewModel = StoppingAppViewModel.shared
    @State var isPresented = false
    @State private var detoxAppCount = 0
    let columns = [
        GridItem(.fixed(56)),
        GridItem(.fixed(56)),
        GridItem(.fixed(56)),
        GridItem(.fixed(56)),
        GridItem(.fixed(56))
    ]
    
    var body: some View {
        VStack(spacing: 1) {
            HStack(spacing: 5) {
                Text("버튼을 눌러 잠금 설정할 앱 추가")
                    .font(.breakUpFont(size: 15))
                    .padding(.leading, 25)
                
                Spacer()
                
                Button {
                    isPresented = true
                } label: {
                    Image(systemName: "plus.circle.fill") // 'plus.circle.fill' 심볼 사용
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                        .foregroundStyle(Color.breakUpYellow)
                        .background(Circle()         .fill(Color.breakUpBlack)           .frame(width: 35, height: 35))         .overlay {
                            Circle()           .stroke(Color.breakUpBlack, lineWidth: 2)                                      }
                }
                .padding(.trailing, 25)
                .familyActivityPicker(isPresented: $isPresented, selection: $stoppingAppViewModel.selectionToDiscourage)
            }
        }
            
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.breakUpYellow)
                .stroke(Color.breakUpBlack, lineWidth: 2)
                .frame(height: 140)
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 18)
                        .fill(Color.breakUpBackground)
                        .stroke(Color.breakUpBlack, lineWidth: 2)
                        .frame(height: 120)// 높이 110
                        .padding(30)
                        .overlay {
                            
                        }
                }
    }
}


#Preview {
    StoppingAppView()
}
