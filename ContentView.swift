import SwiftUI

struct ContentView: View {
    @State private var display: String = "0"

    let buttons: [[String]] = [
        ["7", "8", "9", "/"],
        ["4", "5", "6", "*"],
        ["1", "2", "3", "-"],
        ["0", ".", "=", "+"]
    ]

    var body: some View {
        VStack {
            Spacer()
            Text(display)
                .font(.largeTitle)
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)

            ForEach(buttons, id: \.self) { row in
                HStack {
                    ForEach(row, id: \.[self]) { button in
                        Button(action: {
                            self.buttonTapped(button)
                        }) {
                            Text(button)
                                .font(.largeTitle)
                                .frame(width: 80, height: 80)
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(.bottom)
            }
        }
        .padding()
    }

    func buttonTapped(_ button: String) {
        if button == "=" {
            // Here you can evaluate the expression
            // For simplicity, let's just display the same number
            display = display
        } else if button == "C" {
            display = "0"
        } else {
            if display == "0" {
                display = button
            } else {
                display += button
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}