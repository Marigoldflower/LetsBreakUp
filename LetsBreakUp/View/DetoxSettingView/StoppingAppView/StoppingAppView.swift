//
//  StoppingAppView.swift
//  LetsBreakUp
//
//  Created by 황홍필 on 3/29/24.
//

import SwiftUI
import FamilyControls
import ManagedSettings

struct StoppingAppView: View {
    @ObservedObject var stoppingAppViewModel = StoppingAppViewModel.shared
    @State var isPresented = false
    @Binding var selection: FamilyActivitySelection
    
    let rows = [
        GridItem(.fixed(50), spacing: 15, alignment: .center),
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
                .familyActivityPicker(isPresented: $isPresented, selection: $selection)
            }
        }
        
        
        RoundedRectangle(cornerRadius: 18)
            .fill(Color.breakUpWhite)
            .stroke(Color.breakUpBlack, lineWidth: 2)
            .frame(height: 100)
            .padding(.horizontal, 20)
            .overlay {
                selectedAppListView()
                    .padding(.horizontal, 10)
            }
            .onAppear {
                selection = stoppingAppViewModel.selectionToDiscourage
            }
    }
    
    private func selectedAppListView() -> some View {
        VStack {
            if (selection.applicationTokens.count > 0 || selection.categoryTokens.count > 0) {
                LazyHGrid(rows: rows, alignment: .center) {
                    if selection.applicationTokens.count > 0 {
                        ForEach(Array(selection.applicationTokens), id: \.self) {
                            token in
                            HStack {
                                Spacer()
                                
                                Label(token)
                                    .labelStyle(.iconOnly)
                                    .frame(width: 60, height: 40)
                                    .scaleEffect(1.7)
                                
                                Spacer()
                            }
                            //                            .frame(width: 56, height: 56)
                        }
                    }
                    
                    if selection.categoryTokens.count > 0 {
                        ForEach(Array(selection.categoryTokens), id: \.self) {
                            token in
                            HStack {
                                Spacer()
                                
                                Label(token)
                                    .labelStyle(.iconOnly)
                                    .frame(width: 60, height: 40)
                                    .scaleEffect(1.7)
                                
                                Spacer()
                            }
                            //                            .frame(width: 56, height: 56)
                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, minHeight: 60)
                .background(Color.breakUpBackground)
                .cornerRadius(16)
            } else {
                HStack {
                    Spacer()
                    
                    Text("선택된 디톡스 앱이 없습니다.")
                        .foregroundStyle(Color.breakUpBlack)
                        .font(.breakUpFont(size: 15))
                        .padding(.horizontal, 10)
                        .frame(height: 60)
                        .background(Color.red)
                        .cornerRadius(16)
                    
                    Spacer()
                }
            }
        }
    }
}


#Preview {
    StoppingAppView(selection: .constant(FamilyActivitySelection()))
}
