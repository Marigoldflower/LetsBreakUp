//
//  StoppingAppView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/29/24.
//

import SwiftUI
import FamilyControls

struct StoppingAppView: View {
    @ObservedObject var stoppingAppViewModel = StoppingAppViewModel.shared
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
            HStack {
                Text("앱 잠금 설정")
                    .font(.breakUpFont(size: 20))
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
                .padding(.horizontal, 20)
                .overlay {
                    RoundedRectangle(cornerRadius: 18)
                        .fill(Color.breakUpBackground)
                        .stroke(Color.breakUpBlack, lineWidth: 2)
                        .frame(height: 120)// 높이 110
                        .padding(.horizontal, 30)
                        .overlay {
                            selectedAppListView()
                                .padding(.horizontal, 30)
                        }
                }
    }
    
    private func selectedAppListView() -> some View {
        VStack {
            if (stoppingAppViewModel.selection.applicationTokens.count > 0 || stoppingAppViewModel.selection.categoryTokens.count > 0) {
                LazyVGrid(columns: columns, alignment: .leading) {
                    if stoppingAppViewModel.selection.applicationTokens.count > 0 {
                        ForEach(Array(stoppingAppViewModel.selection.applicationTokens), id: \.self) {
                            token in
                            HStack {
                                Label(token)
                                    .labelStyle(.iconOnly)
                                    .scaleEffect(2.5)
                            }
                            .frame(width: 56, height: 56)
                        }
                    }
                    if stoppingAppViewModel.selection.categoryTokens.count > 0 {
                        ForEach(Array(stoppingAppViewModel.selection.categoryTokens), id: \.self) {
                            token in
                            HStack {
                                Label(token)
                                    .labelStyle(.iconOnly)
                                    .scaleEffect(1.8)
                            }
                            .frame(width: 56, height: 56)
                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, minHeight: 80)
                .background(Color.breakUpBackground)
                .cornerRadius(16)
            } else {
                Text("선택된 디톡스 앱이 없습니다.")
                    .foregroundStyle(Color.breakUpBlack)
                    .font(.breakUpFont(size: 15))
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: 110)
                    .background(Color.breakUpBackground)
                    .cornerRadius(16)
            }
        }
        .padding()
        
    }
}


#Preview {
    StoppingAppView()
}
