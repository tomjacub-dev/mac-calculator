import SwiftUI

class CalculatorViewModel: ObservableObject {
    @Published var display = "0"
    @Published var previousDisplay = ""

    private var currentOperation: Operation?
    private var firstOperand: Double?

    enum Operation {
        case add, subtract, multiply, divide
    }

    func add() {
        setOperation(.add)
    }

    func subtract() {
        setOperation(.subtract)
    }

    func multiply() {
        setOperation(.multiply)
    }

    func divide() {
        setOperation(.divide)
    }

    func equals() {
        if let operation = currentOperation, let firstValue = firstOperand, let secondValue = Double(display) {
            switch operation {
            case .add:
                display = String(firstValue + secondValue)
            case .subtract:
                display = String(firstValue - secondValue)
            case .multiply:
                display = String(firstValue * secondValue)
            case .divide:
                display = String(firstValue / secondValue)
            }
            previousDisplay = ""
            currentOperation = nil
            firstOperand = nil
        }
    }

    func clear() {
        display = "0"
        previousDisplay = ""
        currentOperation = nil
        firstOperand = nil
    }

    func delete() {
        if display.count > 1 {
            display.removeLast()
        } else {
            display = "0"
        }
    }

    private func setOperation(_ operation: Operation) {
        if firstOperand == nil {
            firstOperand = Double(display)
        }
        currentOperation = operation
        previousDisplay = display
        display = "0"
    }
}