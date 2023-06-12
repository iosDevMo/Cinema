//
//  GallaryView.swift
//  Cinema
//
//  Created by mohamdan on 10/06/2023.
//

import SwiftUI

struct GallaryView: View {
    //:MARK: - Properties
    @State var layoutColums : Int = 2
    @State var layout : [GridItem] = Array(repeating: GridItem(), count: 3)
    @State var selectedImage : String = "men-in-black"
    @State var buttonImage : String = "square.grid.3x2"
    let movies : [MovieModel] = decode(file: "movies.json")
    //:MARK: - Functions
    func switchLayout () {
        if layoutColums == 1 {
            layoutColums = 2
            buttonImage = "square.grid.3x2"
        }else if layoutColums == 2 {
            layoutColums = 3
            buttonImage = "rectangle.grid.1x2"
        }else{
            layoutColums = 1
            buttonImage = "square.grid.2x2"
        }
        layout = Array(repeating: GridItem(), count: layoutColums)
    }
    //:MARK: - Body
    var body: some View {
        NavigationView {
            VStack{
                Image(selectedImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(4)
                Divider()
                ScrollView(.vertical){
                    LazyVGrid(columns: layout) {
                        ForEach(movies) { movie in
                            Image(movie.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .onTapGesture {
                                    selectedImage = movie.image
                                }
                        }
                    }//: Lazy vertical
                }//:scroll view
            }//: Vstack
            .navigationTitle("Gallary")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        switchLayout()
                    } label: {
                        Image(systemName: buttonImage)
                            .font(.title3)
                    }

                }
            }
        }//: Navigation view
    }
}

struct GallaryView_Previews: PreviewProvider {
    static var previews: some View {
        GallaryView()
    }
}
