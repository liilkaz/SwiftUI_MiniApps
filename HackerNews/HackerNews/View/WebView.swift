//
//  WebView.swift
//  TechNews
//
//  Created by Лилия Феодотова on 18.03.2023.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeStringUrl = urlString{
            if let url = URL(string: safeStringUrl){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
