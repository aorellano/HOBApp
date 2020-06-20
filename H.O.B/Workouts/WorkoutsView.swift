//
//  WorkoutsView.swift
//  H.O.B
//
//  Created by Alexis Orellano on 6/9/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class WorkoutsView: UIView {
    let titleHeader: UILabel = {
        let label = UILabel()
        label.text = "Workout with Us"
        label.font = UIFont.secondaryFont
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textColor = UIColor.primaryFontColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var playerView1: YTPlayerView = {
        let player = YTPlayerView()
        player.load(withVideoId: "EYLUZUyfios", playerVars: ["playsinline": 1, "origin": "https://www.youtube.com"])
        //player.layer.cornerRadius = 20
        //player.layer.masksToBounds = true
        player.translatesAutoresizingMaskIntoConstraints = false
        return player
    }()
    
    var playerView2: YTPlayerView = {
        let player = YTPlayerView()
        player.load(withVideoId: "aQIIc-nar0Y", playerVars: ["playsinline": 1, "origin": "https://www.youtube.com"])
        player.layer.cornerRadius = 20

        player.layer.masksToBounds = true
        player.translatesAutoresizingMaskIntoConstraints = false
        return player
    }()
    
        let descriptionParagraph: UILabel = {
        let label = UILabel()
        label.text = """
        Take a journey with us in pushing past limitations. Get out og your comfort zone and jump itno a challenge!
            YOU GOT THIS!
        """
        label.font = UIFont.productDescriptionFont
        label.textColor = UIColor.primaryFontColor
            label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let watchMoreButton: UIButton = {
        let button = UIButton()
        let attributes : [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14.0),
            NSAttributedString.Key.foregroundColor : UIColor(red: 30/255,green: 144/255, blue: 255/255, alpha: 1.0),
            NSAttributedString.Key.underlineStyle : NSUnderlineStyle.single.rawValue
        ]
        let attributeString = NSMutableAttributedString(string: "Watch More",
                                                              attributes: attributes)
        button.setAttributedTitle(attributeString, for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height).isActive = true
        
        setupTitleHeader()
        setupPlayerVideos()
        setupDescriptionParagraph()
        setupButton()
    }
    
    func setupTitleHeader() {
        addSubview(titleHeader)
        
        titleHeader.topAnchor.constraint(equalTo: topAnchor, constant: 40).isActive = true
        titleHeader.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    }
    func setupPlayerVideos() {
        addSubview(playerView1)
        //addSubview(playerView2)
        
        playerView1.topAnchor.constraint(equalTo: titleHeader.bottomAnchor, constant: 80).isActive = true
        playerView1.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        playerView1.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        playerView1.heightAnchor.constraint(equalToConstant: 250).isActive = true
//        playerView2.topAnchor.constraint(equalTo: playerView1.bottomAnchor, constant: 20).isActive = true
//        playerView2.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
//        playerView2.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
//        playerView2.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func setupDescriptionParagraph() {
        addSubview(descriptionParagraph)
        
        descriptionParagraph.topAnchor.constraint(equalTo: playerView1.bottomAnchor, constant: 80).isActive = true
        descriptionParagraph.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40).isActive = true
        descriptionParagraph.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40).isActive = true
    }
    
    func setupButton() {
        addSubview(watchMoreButton)
        
        watchMoreButton.bottomAnchor.constraint(equalTo: descriptionParagraph.bottomAnchor, constant: 60).isActive = true
        watchMoreButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        watchMoreButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        watchMoreButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
