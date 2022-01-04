import SwiftUI

struct ContentView: View {
    //音を鳴らすSounPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    var body: some View {
        ZStack{
            //背景画像を表示
            BackgroundView(imageName: "background")
            
            HStack{
                //シンバルボタン
                Button(action: {
                    //ボタン押下時
                    soundPlayer.cymbalPlay()
                    
                }){
                    Image("cymbal")
                }
                //ギターボタン
                Button(action:{
                    //ボタン押下時
                    soundPlayer.guitarPlay()
                }){
                    Image("guitar")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
