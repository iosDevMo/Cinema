//
//  BrowserView.swift
//  Cinema
//
//  Created by mohamdan on 10/06/2023.
//

import SwiftUI

struct BrowserView: View {
    //: Properties
    var movies : [MovieModel] = decode(file: "movies.json")
    //: Body
    var body: some View {
        NavigationView {
            VStack{
                List {
                    CoverView()
                        .frame(height: 235)
                    ForEach(movies) { item in
                        MovieCellView(movie: item)
                    }
                    HStack {
                        Spacer()
                        Image("camera")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                        Spacer()
                    }//: Hstack image
                    HStack {
                        Spacer()
                        Text("All Rights Reserved")
                            .font(.footnote)
                        Spacer()
                    }//: Hstack text
                }//: List main
            }//: Vstack
            .navigationTitle("Cinema")
        }//: Navigation View
    }
}

struct BrowserView_Previews: PreviewProvider {
    static var previews: some View {
        BrowserView()
            .preferredColorScheme(.dark)
    }
}
