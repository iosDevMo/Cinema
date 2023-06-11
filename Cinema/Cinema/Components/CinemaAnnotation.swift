//
//  CinemaAnnotation.swift
//  Cinema
//
//  Created by mohamdan on 11/06/2023.
//

import SwiftUI

struct CinemaAnnotation: View {
    //:MARK: - Properties
    var location : CinemaLocation
    @State private var animation : Double = 0.0
    //:MARK: - Body
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, alignment: .center)
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 50, alignment: .center)
                .scaleEffect(1+CGFloat(animation))
                .opacity(1-animation)
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, alignment: .center)
                .clipShape(Circle())
            
        }//: Zstack
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation=1
            }
        }
    }
}

struct CinemaAnnotation_Previews: PreviewProvider {
    static var locations : [CinemaLocation] = decode(file: "locations.json")
    static var previews: some View {
        CinemaAnnotation(location: locations[0])
    }
}
