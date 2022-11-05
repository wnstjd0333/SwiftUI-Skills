//
//  PhotoModel.swift
//  SwiftUI-Skills (iOS)
//
//  Created by 金峻聖 on 2022/11/01.
//

import Foundation

struct PhotoModel: Identifiable, Codable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}
