import SwiftUI

struct InfoView: View {
    var titleOn: Bool

    var body: some View {
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
                        if titleOn {
                            Text(post.title)
                                .font(.headline)
                                .padding(.top, 8)
                        }
                    }
                }
                .padding(5)
            }
        }
       .navigationTitle("Каталог товаров")
        .listStyle(PlainListStyle())
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(titleOn: true)
    }
}
