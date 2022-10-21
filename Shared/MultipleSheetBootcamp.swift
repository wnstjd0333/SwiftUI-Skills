//
//  MultipleSheetBootcamp.swift
//  SwiftUI-Skills
//
//  Created by 金峻聖 on 2022/10/11.
//

import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

// 1 - use a binding
// 2 - use a multiple .sheets
// 3 - use $item

struct MultipleSheetBootcamp: View {
    
//    @State var selectedModel: RandomModel = RandomModel(title: "STARTING TITLE")
//    @State var showSheet: Bool = false
//
//    var body: some View {
//        VStack(spacing: 20) {
//            Button("Button 1") {
//                selectedModel = RandomModel(title: "ONE")
//                showSheet.toggle()
//            }
//            Button("Button 2") {
//                selectedModel = RandomModel(title: "TWO")
//                showSheet.toggle()
//            }
//        }
//        .sheet(isPresented: $showSheet) {
//            NextScreen(selectedModel: selectedModel)
//        }
//    }
    
//    @State var selectedModel: RandomModel = RandomModel(title: "STARTING TITLE")
//    @State var showSheet: Bool = false
//    @State var showSheet2: Bool = false
//
//    var body: some View {
//        VStack(spacing: 20) {
//            Button("Button 1") {
//                showSheet.toggle()
//            }
//            .sheet(isPresented: $showSheet) {
//                NextScreen(selectedModel: RandomModel(title: "ONE"))
//            }
//
//            Button("Button 2") {
//                showSheet2.toggle()
//            }
//            .sheet(isPresented: $showSheet2) {
//                NextScreen(selectedModel: RandomModel(title: "TWO"))
//            }
//        }
//    }
    
    @State var selectedModel: RandomModel? = nil

    var body: some View {
        VStack(spacing: 20) {
            ForEach(0..<50) { index in
                Button("Button \(index)") {
                    selectedModel = RandomModel(title: "\(index)")
                }
            }
        }
        .sheet(item: $selectedModel) { model in
            NextScreen(selectedModel: model)
        }
    }
}

struct NextScreen: View {
    
    let selectedModel: RandomModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

struct MultipleSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetBootcamp()
    }
}
