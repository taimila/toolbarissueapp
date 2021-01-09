import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            SidebarView()
            ListView()
            DetailView()
        }
    }
}

struct SidebarView: View {
    var body: some View {
        List {
            NavigationLink("Item 1", destination: ListView())
            NavigationLink("Item 2", destination: ListView())
            NavigationLink("Item 3", destination: ListView())
            NavigationLink("Item 4", destination: ListView())
        }
    }
}

struct ListView: View {
    var body: some View {
        List {
            NavigationLink("List item 1", destination: DetailView())
            NavigationLink("List item 2", destination: DetailView())
            NavigationLink("List item 3", destination: DetailView())
            NavigationLink("List item 4", destination: DetailView())
        }.toolbar {
            Button(action: {}) {
                Image(systemName: "person")
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail")
            .toolbar {
                Spacer()
                Button(action: {}) {
                    Image(systemName: "trash")
                }
                Button(action: {}) {
                    Image(systemName: "heart")
                }
                Button(action: {}) {
                    Image(systemName: "star")
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
