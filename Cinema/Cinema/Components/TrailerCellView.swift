//
//  TrailerCellView.swift
//  Cinema
//
//  Created by mohamdan on 11/06/2023.
//

import SwiftUI

struct TrailerCellView: View {
    //MARK: - Properties
    var trailer : TrailerModel
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            ZStack{
                Image(trailer.thumbnail)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32, alignment: .center)
                    .shadow(radius: 4)
            }//: Zstack
            VStack(alignment: .leading, spacing: 8){
                Text(trailer.name)
                    .font(.title3)
                    .foregroundColor(.accentColor)
                    .layoutPriority(1)
                Text(trailer.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
            }//: Vstack
        }//: Hstack
    }
}

struct TrailerCellView_Previews: PreviewProvider {
    static let trailers : [TrailerModel] = decode(file: "trailers.json")
    static var previews: some View {
        TrailerCellView(trailer: trailers[0])
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
        
    }
}
