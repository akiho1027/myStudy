//
//  ContentView.swift
//  MyJanken
//
//  Created by Akiho Ozawa on 2022/01/01.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            //スペースを追加
            Spacer()
            
            if answerNumber == 0 {
                //スタート時
                Text("これからじゃんけんをします")
                    .padding(.bottom)
                
            }else if answerNumber == 1 {
                //グーの画像を指定
                Image("gu")
                    //リサイズを指定（画面に画像をおさめる）
                    .resizable()
                    //アスペクト比を維持
                    .aspectRatio(contentMode: .fit)
                
                //スペースを追加
                Spacer()
                
                Text("グー")
                    .padding(.bottom)
                
            }else if answerNumber == 2 {
                //チョキの画像を指定
                Image("choki")
                    //リサイズを指定（画面に画像をおさめる）
                    .resizable()
                    //アスペクト比を維持
                    .aspectRatio(contentMode: .fit)
                
                //スペースを追加
                Spacer()
                
                Text("チョキ")
                    .padding(.bottom)
                
            }else{
                //パーの画像を指定
                Image("pa")
                    //リサイズを指定（画面に画像をおさめる）
                    .resizable()
                    //アスペクト比を維持
                    .aspectRatio(contentMode: .fit)
                
                //スペースを追加
                Spacer()
                
                Text("パー")
                    .padding(.bottom)
                
            }

            //次のじゃんけん
            Button("じゃんけんをする！") {
                var newAnswerNumber = 0
                repeat{
                    newAnswerNumber = Int.random(in: 1...3)
                }while answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .font(.title)
            .background(Color.red)
            .foregroundColor(Color.white)
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
