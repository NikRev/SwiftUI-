import SwiftUI

struct DetailView: View {
    var post: Post
    
    var body: some View {
        ScrollView{
            VStack {
                post.image
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipped()

                Text(post.title)
                    .font(.system(size: 20))
                    .padding()
                    

                Text(post.description)
                    .font(.body)
                    .padding()
                
                Spacer()
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(post: postsData[0])
    }
}
