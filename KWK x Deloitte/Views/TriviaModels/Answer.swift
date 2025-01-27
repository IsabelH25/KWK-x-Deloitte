//
//  Answer.swift
//  KWK x Deloitte
//
//  Created by Isabel Hong on 1/19/25.
//

import Foundation


struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
