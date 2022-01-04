//
//  BackgroundView.swift
//  MyMusic
//
//  Created by Akiho Ozawa on 2022/01/04.
//

import SwiftUI

struct BackgroundView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            //セーフエリア外まで表示
            .ignoresSafeArea()
            .aspectRatio(contentMode: .fill)

    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: "background")
    }
}
