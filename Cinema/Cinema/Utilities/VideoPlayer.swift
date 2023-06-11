//
//  VideoPlayer.swift
//  Cinema
//
//  Created by mohamdan on 11/06/2023.
//

import Foundation
import AVKit
var videoPlayer : AVPlayer?

func playVideo(fileName: String, fileFormate: String) -> AVPlayer {
    let url = Bundle.main.url(forResource: fileName, withExtension: fileFormate)
    if url != nil {
        videoPlayer = AVPlayer(url: url!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
