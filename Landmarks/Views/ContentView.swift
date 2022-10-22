/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the list of landmarks.
*/

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    
    enum Tab{
        case featured
        case list
    }
    
    var body: some View {
        TabView {
            CategoryHome()
                .tag(Tab.featured)
                .tabItem({
                    Label("Featured", systemImage: "star")
                })
            LandmarkList()
                .tag(Tab.list)
                .tabItem({
                    Label("List",systemImage: "list.bullet")
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
