//
//  ContentView.swift
//  ShareApp
//
//  Created by 渡邊魁優 on 2023/05/31.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    
    var body: some View {
        Button(action: {
            isActive = true
        }) {
            Text("Share")
        }
        .sheet(isPresented: $isActive) {
            ActivityView(activityItems: ["https://github.com/Aoitoridayo"])
        }
    }
}
struct ActivityView: UIViewControllerRepresentable {
    let activityItems: [Any]
    let applicationActivities: [UIActivity]? = nil

    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityView>) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityView>) {

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
