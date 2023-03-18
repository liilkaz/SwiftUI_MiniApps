//
//  ContentView.swift
//  TechNews
//
//  Created by Лилия Феодотова on 18.03.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            if networkManager.isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .black))
            } else {
                List(networkManager.posts){ post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        VStack(alignment: .leading) {
                            Text(post.title)
                            Text("\(post.points) points by \(post.author)")
                                .foregroundColor(.gray)
                        }
                    }
                }
                .navigationTitle("Hacker News")
            }
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
