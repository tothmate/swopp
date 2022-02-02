import SwiftUI
import WebKit

struct SwoppView : UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView  {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.allowsInlineMediaPlayback = true
        return WKWebView(frame: .zero, configuration: webConfiguration)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: URL(string: "https://www.joinswapp.com/dubai/en-us")!)
        uiView.load(request)
    }
}

struct ContentView: View {
    var body: some View {
        SwoppView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
