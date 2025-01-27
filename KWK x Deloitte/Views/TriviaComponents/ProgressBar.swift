//
//  ProgressBar.swift
//  KWK x Deloitte
//
//  Created by Isabel Hong on 1/19/25.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color.gray)
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: progress, height: 4)
                .foregroundColor(Color.black)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ProgressBar(progress: 10)
}
