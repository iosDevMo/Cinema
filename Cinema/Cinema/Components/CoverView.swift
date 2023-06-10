//
//  CoverView.swift
//  Cinema
//
//  Created by mohamdan on 10/06/2023.
//

import SwiftUI

struct CoverView: View {
    //: Properties
    let coverImages : [CoverModel] = decode(file: "covers.json")
    //: Body
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFit()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView()
    }
}
