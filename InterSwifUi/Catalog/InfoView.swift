//
//  InfoView.swift
//  InterSwifUi
//
//  Created by Никита  on 04.03.2024.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(postsData.indices, id: \.self) { index in
                let post = postsData[index]
                NavigationLink(destination: DetailView(post: post)) {
                    HStack {
                        post.image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .clipped()

                        VStack(alignment: .leading) {
                            Text(post.title)
                                .font(.headline)
                                .padding(.top, 8)

                           
                        }
                    }
                    .padding(5)
                }
            }
            .navigationTitle("Каталог товаров")
            .listStyle(PlainListStyle())
        }
    }
}



#Preview {
    InfoView()
}
