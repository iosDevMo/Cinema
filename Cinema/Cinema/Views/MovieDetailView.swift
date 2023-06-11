//
//  MovieDetailView.swift
//  Cinema
//
//  Created by mohamdan on 11/06/2023.
//

import SwiftUI

struct MovieDetailView: View {
    //MARK: - Properties
    var movie : MovieModel
    //MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            VStack(alignment: .center, spacing: 20) {
                Image(movie.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 235, alignment: .center)
                
                TitleHeaderView(titleText: "Actors", titleImage: "person")
                List {
                    ForEach (movie.actor, id : \.self){item in
                        Text(item)
                    }
                }//: List
                .listStyle(InsetGroupedListStyle())
                .frame(minWidth: 200, idealWidth: 200, minHeight: 200)
                
                TitleHeaderView(titleText: "Movie Images", titleImage: "photo.on.rectangle.angled")
                
                ScrollView(.horizontal, showsIndicators: true){
                    HStack{
                        ForEach(movie.gallery, id: \.self){item in
                            Image(item)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 375)
                        }
                    }//: Hstack
                }//: Scroll view
                TitleHeaderView(titleText: "More about...", titleImage: "ellipsis.circle")
                Text(movie.description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                GroupBox{
                    HStack{
                        Image(systemName: "globe")
                        Text("Movie Website")
                        Group{
                            Image(systemName: "arrow.up.right.square")
                            Link(movie.name, destination: (URL(string: movie.link) ?? URL(string: "https://google.com"))!)
                        }
                        .foregroundColor(.accentColor)
                    }//: Hstack
                }
            }//: Main Vstack
            .padding(.all, 5)
        }//: Main Scroll view
        .navigationTitle(movie.name)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static let movies : [MovieModel] = decode(file: "movies.json")
    static var previews: some View {
        MovieDetailView(movie: movies[0])
    }
}

struct TitleHeaderView: View {
    //: Properties
    var titleText : String
    var titleImage : String
    //: Body
    var body: some View {
        HStack {
            Image(systemName: titleImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(titleText)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}
