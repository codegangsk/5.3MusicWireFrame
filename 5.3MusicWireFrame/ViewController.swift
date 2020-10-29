//
//  ViewController.swift
//  5.3MusicWireFrame
//
//  Created by Sophie Kim on 2020/10/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var albumImageView: UIImageView!
    @IBOutlet var reverseButtonBackground: UIView!
    @IBOutlet var playPauseButtonBackground: UIView!
    @IBOutlet var forwardButtonBackground: UIView!
    @IBOutlet var reverseButton: UIButton!
    @IBOutlet var playPauseButton: UIButton!
    @IBOutlet var forwardButton: UIButton!
    
    var isPlaying: Bool = true {
        didSet {
            if isPlaying {
                playPauseButton.setImage(UIImage(named:"pause")!, for: .normal)
            } else {
                playPauseButton.setImage(UIImage(named: "play")!, for: .normal)
            }
        }
    }
}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reverseButtonBackground.layer.cornerRadius = 30.0
        reverseButtonBackground.clipsToBounds = true
        reverseButtonBackground.alpha = 0.0
        
        playPauseButtonBackground.layer.cornerRadius = 30.0
        playPauseButtonBackground.clipsToBounds = true
        playPauseButtonBackground.alpha = 0.0
        
        forwardButtonBackground.layer.cornerRadius = 30.0
        forwardButtonBackground.clipsToBounds = true
        forwardButtonBackground.alpha = 0.0 
    }
}

extension ViewController {
    @IBAction func playPauseButtonTapped(_ sender: Any) {
        if isPlaying {
            UIView.animate(withDuration: 0.5) {
                self.albumImageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.albumImageView.transform = CGAffineTransform.identity
            })
        }
        isPlaying.toggle()
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        let buttonBackground: UIView
        
        switch sender {
        case reverseButton:
            buttonBackground = reverseButtonBackground
        case playPauseButton:
            buttonBackground = playPauseButtonBackground
        case forwardButton:
             buttonBackground = forwardButtonBackground
        default:
            return
        }
        
        UIView.animate(withDuration: 0.25) {
            buttonBackground.alpha = 0.3
            sender.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }
    }
    
    @IBAction func touchUpInside(_ sender: UIButton) {
        var buttonBackground: UIView
        
        switch sender {
        case reverseButton:
            buttonBackground = reverseButtonBackground
        case playPauseButton:
            buttonBackground = playPauseButtonBackground
        case forwardButton:
            buttonBackground = forwardButtonBackground
        default:
            return
        }
        
        UIView.animate(withDuration: 0.25, animations: {
            buttonBackground.alpha = 0.0
            buttonBackground.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            sender.transform = CGAffineTransform.identity
        }) { (_) in
            buttonBackground.transform = CGAffineTransform.identity
        }
    }
}

