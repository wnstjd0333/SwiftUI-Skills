//
//  EscapingBootcamp.swift
//  SwiftUI-Skills
//
//  Created by 金峻聖 on 2022/10/26.
//

import SwiftUI

class EscapingViewModel: ObservableObject {
   
    @Published var text: String = "Hello"
   
    func getData() {
        downloadData4 { [weak self] returnedResult in
            self?.text = returnedResult.data
        }
    }
    
    func downloadData() -> String {
        return "New Data!"
    }
    
    func downloadData2(completionHandelr: (_ data: String) -> Void) {
        completionHandelr("New data!")
    }
    
    func downloadData3(completionHandelr: @escaping (_ data: String) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completionHandelr("New data!")
        }
    }
    
    func downloadData4(completionHandelr: @escaping (DownloadResult) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let result = DownloadResult(data: "New data!")
            completionHandelr(result)
        }
    }
    
    func downloadData5(completionHandelr: @escaping DownloadCompletion) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let result = DownloadResult(data: "New data!")
            completionHandelr(result)
        }
    }
}

struct DownloadResult {
    let data: String
}

typealias DownloadCompletion = (DownloadResult) -> ()

struct EscapingBootcamp: View {
    
    @StateObject var vm = EscapingViewModel()
    
    var body: some View {
        Text(vm.text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
            .onTapGesture {
                vm.getData()
            }
    }
}

struct EscapingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EscapingBootcamp()
    }
}
