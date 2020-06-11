//
//  WorkoutsController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/9/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class WorkoutsController: UIViewController {

    let workoutsView = WorkoutsView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        workoutsView.playerView1.delegate = self
    }
    
    override func loadView() {
        view = workoutsView
    }
}

extension WorkoutsController: YTPlayerViewDelegate {
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        //playerView.playVideo()
    }
}
