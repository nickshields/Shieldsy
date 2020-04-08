//
//  BackgroundVideoView.swift
//  Shieldsy
//
//  Created by Nick Shields on 2020-04-08.
//  Copyright © 2020 Nick Shields. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class BackgroundVideoView: UIViewController {
    
    //var avPlayer: AVPlayer!
    var player: AVQueuePlayer!
    var playerLayer: AVPlayerLayer!
    var playerItem: AVPlayerItem!
    var playerLooper: AVPlayerLooper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("I AM IN HERER")
        //guard let biggy = URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_adv_example_hevc/master.m3u8") else {
        //    return
        //}
        
        //MARK: Working Implementation Start:
        
//        let filepath: String? = Bundle.main.path(forResource: "video", ofType: "mp4")
//        let fileURL = URL.init(fileURLWithPath: filepath!)
//
//        let player = AVPlayer(url: fileURL)
//        let playerLayer = AVPlayerLayer(player: player)
//        playerLayer.frame = self.view.bounds
//        playerLayer.videoGravity = .resizeAspectFill
//        self.view.layer.addSublayer(playerLayer)
//        player.play()
        
        //MARK: Working implementation finish
        
        //MARK: WORKING implementation start
        
        
        self.player = AVQueuePlayer()
        playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        self.view.layer.addSublayer(playerLayer)
        
        let filepath: String? = Bundle.main.path(forResource: "video", ofType: "mp4")
        let fileURL = URL.init(fileURLWithPath: filepath!)
        playerItem = AVPlayerItem(url: fileURL)
        
        playerLooper = AVPlayerLooper(player: player, templateItem: playerItem)
        player.play()
        
        //MARK: WORKING implementation finish
        
        
//        let filepath: String? = Bundle.main.path(forResource: "carson", ofType: "MOV")
//        let fileURL = URL.init(fileURLWithPath: filepath!)
//        print(fileURL)
//
//        avPlayer = AVPlayer(url: fileURL)
//
//        let avPlayerController = AVPlayerViewController()
//        avPlayerController.player = avPlayer
//        avPlayerController.view.frame = view.bounds
//        avPlayerController.videoGravity = .resizeAspectFill
//
//        avPlayerController.showsPlaybackControls = true
//        avPlayerController.player?.play()
//        self.view.addSubview(avPlayerController.view)
        }

//        avPlayerController.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
//
//        avPlayerController.showsPlaybackControls = true
//        print("About to hit play!")
//        //avPlayerController.player?.play()
//        print("I hit Hit play!")
//        self.view.addSubview(avPlayerController.view)
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
