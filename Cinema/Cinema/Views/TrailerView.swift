//
//  TraillerView.swift
//  Cinema
//
//  Created by mohamdan on 10/06/2023.
//

import SwiftUI

struct TrailerView: View {
    //:MARK: - Properties
    @State var trailers : [TrailerModel] = decode(file: "trailers.json")
    //:MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(trailers) { trailer in
                    TrailerCellView(trailer: trailer)
                }
            }//: List
            .navigationTitle("Movie Trailers")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        trailers.shuffle()
                    } label: {
                        Image(systemName: "shuffle")
                    }

                }
            }
        }//: Navigation View
    }
}

struct TraillerView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerView()
    }
}
