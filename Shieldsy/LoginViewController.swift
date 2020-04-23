//
//  LoginViewController.swift
//  Shieldsy
//
//  Created by Nick Shields on 2020-04-07.
//  Copyright © 2020 Nick Shields. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class LoginViewController: UIViewController {
    
    
    
    var player: AVQueuePlayer!
    var playerLayer: AVPlayerLayer!
    var playerItem: AVPlayerItem!
    var playerLooper: AVPlayerLooper!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("This view did load!")
        self.startBackgroundVideo()
        

        // Do any additional setup after loading the view.
    }
    
    func startBackgroundVideo(){
        self.player = AVQueuePlayer()
        playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        self.view.layer.insertSublayer(playerLayer, at: 0)
        
        let filepath: String? = Bundle.main.path(forResource: "video", ofType: "mp4")
        let fileURL = URL.init(fileURLWithPath: filepath!)
        playerItem = AVPlayerItem(url: fileURL)
        
        playerLooper = AVPlayerLooper(player: player, templateItem: playerItem)
        player.play()
    }
    
    
    
    
    @IBAction func loginButton(_ sender: Any) {
        print("Login Button Pressed!")
        performSegue(withIdentifier: "login", sender: "login_button")

    }
    
    @IBAction func gettingStartedButton(_ sender: Any) {
        print("Getting started button pressed!")
        
    }
}

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
