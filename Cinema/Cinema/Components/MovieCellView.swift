//
//  MovieCellView.swift
//  Cinema
//
//  Created by mohamdan on 10/06/2023.
//

import SwiftUI

struct MovieCellView: View {
    //: Properties
    var movie : MovieModel
    //: Body
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(movie.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            VStack(alignment: .leading, spacing: 8){
                Text(movie.name)
                    .font(.title3)
                    .foregroundColor(.accentColor)
                Text(movie.headline)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }//: Vstack
            
        }//: Hstack
        
    }
}

struct MovieCellView_Previews: PreviewProvider {
    static let movies : [MovieModel] = decode(file: "movies.json")
    static var previews: some View {
        MovieCellView(movie: movies[2])
    }
}
