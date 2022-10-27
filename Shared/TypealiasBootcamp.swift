//
//  TypealiasBootcamp.swift
//  SwiftUI-Skills
//
//  Created by 金峻聖 on 2022/10/25.
//

import SwiftUI

struct MoviewModel {
    let title: String
    let director: String
    let count: Int
}

//struct TVModel {
//    let title: String
//    let director: String
//    let count: Int
//}

typealias TVModel = MoviewModel

struct TypealiasBootcamp: View {
    
//    @State var item: MoviewModel = MoviewModel(title: "Title", director: "Joe", count: 5)
    @State var item: TVModel = TVModel(title: "TV title", director: "Emmiliy", count: 10)
    
    var body: some View {
        VStack {
            Text(item.title)
            Text(item.director)
            Text("\(item.count)")
        }
    }
}

struct TypealiasBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TypealiasBootcamp()
    }
}
