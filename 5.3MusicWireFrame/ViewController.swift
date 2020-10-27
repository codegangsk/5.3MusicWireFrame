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
}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reverseButtonBackground.layer.cornerRadius = 35.0
        reverseButtonBackground.clipsToBounds = true
        reverseButtonBackground.alpha = 0.0
        
        playPauseButtonBackground.layer.cornerRadius = 35.0
        playPauseButtonBackground.clipsToBounds = true
        playPauseButtonBackground.alpha = 0.0
        
        forwardButtonBackground.layer.cornerRadius = 35.0
        forwardButtonBackground.clipsToBounds = true
        forwardButtonBackground.alpha = 0.0 
    }
}

