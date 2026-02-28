import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CalculatorViewModel()

    var body: some View {
        VStack {
            Spacer()
            Text(viewModel.display)
                .font(.largeTitle)
                .padding()
                .background(Color.gray)
                .cornerRadius(10)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.trailing)
            
            HStack {
                Button("1") { viewModel.appendDigit("1") }
                Button("2") { viewModel.appendDigit("2") }
                Button("3") { viewModel.appendDigit("3") }
                Button("/") { viewModel.divide() }
            }
            .font(.largeTitle)
            .padding()
            
            HStack {
                Button("4") { viewModel.appendDigit("4") }
                Button("5") { viewModel.appendDigit("5") }
                Button("6") { viewModel.appendDigit("6") }
                Button("*") { viewModel.multiply() }
            }
            .font(.largeTitle)
            .padding()
            
            HStack {
                Button("7") { viewModel.appendDigit("7") }
                Button("8") { viewModel.appendDigit("8") }
                Button("9") { viewModel.appendDigit("9") }
                Button("-") { viewModel.subtract() }
            }
            .font(.largeTitle)
            .padding()
            
            HStack {
                Button("0") { viewModel.appendDigit("0") }
                Button("=") { viewModel.equals() }
                Button("C") { viewModel.clear() }
                Button("+") { viewModel.add() }
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