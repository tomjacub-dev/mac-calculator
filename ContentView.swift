import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("0")
                .font(.largeTitle)
                .padding()
                .background(Color.gray)
                .cornerRadius(10)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.trailing)
            
            HStack {
                Button("1") { } Button("2") { } Button("3") { } Button("/") { }
            }
            .font(.largeTitle)
            .padding()
            
            HStack {
                Button("4") { } Button("5") { } Button("6") { } Button("*") { }
            }
            .font(.largeTitle)
            .padding()
            
            HStack {
                Button("7") { } Button("8") { } Button("9") { } Button("-") { }
            }
            .font(.largeTitle)
            .padding()
            
            HStack {
                Button("0") { } Button("=") { } Button("C") { } Button("+") { }
            }
            .font(.largeTitle)
            .padding()
        }
        .padding()
    }
} 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}