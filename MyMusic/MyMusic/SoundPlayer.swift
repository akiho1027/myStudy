//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by Akiho Ozawa on 2022/01/04.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //シンバルの音源読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    
    //ギターの音源読み込み
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    //シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    //ギター用プレイヤーの変数
    var guitarPlayer: AVAudioPlayer!
    
    //シンバルをならす
    func cymbalPlay(){
        do{
        //シンバル用のプレイヤーに、音源データを設定
        cymbalPlayer = try AVAudioPlayer(data: cymbalData)
        
        cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました")
        }        
    }
    
    //ギターをならす
    func guitarPlay(){
        do{
        //ギター用のプレイヤーに、音源データを設定
        guitarPlayer = try AVAudioPlayer(data: guitarData)
        
        guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました")
        }
    }

}
