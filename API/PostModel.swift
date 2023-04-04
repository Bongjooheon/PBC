//
//  PostModel.swift
//  skhuaz
//
//  Created by 봉주헌 on 2023/04/04.
//

import Foundation

// MARK: - Welcome
struct PostModel: Codable {
    let email, password, nickname, graduate: String
    let major1, major2, department, majorMinor: String
    let doubleMajor: String

    enum CodingKeys: String, CodingKey {
        case email, password, nickname, graduate, major1, major2, department
        case majorMinor = "major_minor"
        case doubleMajor = "double_major"
    }
}
