//
//  TrailerPlayerView.swift
//  Cinema
//
//  Created by mohamdan on 11/06/2023.
//

import SwiftUI
import AVKit

struct TrailerPlayerView: View {
    //:MARK: - Properties
    var trailer : String
    //:MARK: - Body
    var body: some View {
        VideoPlayer(player: playVideo(fileName: trailer, fileFormate: "mp4"))
            .overlay(
                HStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32, alignment: .center)
                        .padding(.top, 6)
                        .padding(.horizontal, 8)
                    Text(trailer)
                        .font(.title3)
                        .foregroundColor(.accentColor)
                        .padding()
                }//: Hstack
                ,alignment: .topLeading
            )
    }
}

struct TrailerPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerPlayerView(trailer: "men-in-black")
    }
}
