import SwiftUI

struct ContentView: View {
    @AppStorage("titleOn") private var titleOn: Bool = true
    
    var body: some View {
        NavigationView {
            InfoView(titleOn: titleOn)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
