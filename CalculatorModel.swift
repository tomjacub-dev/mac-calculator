class CalculatorModel {
    private var currentResult: Double = 0.0
    private var lastOperator: String?
    private var lastValue: Double?

    func add(value: Double) {
        calculateIfNeeded(value)
        lastOperator = "+"
    }

    func subtract(value: Double) {
        calculateIfNeeded(value)
        lastOperator = "-"
    }

    func multiply(value: Double) {
        calculateIfNeeded(value)
        lastOperator = "*"
    }

    func divide(value: Double) {
        calculateIfNeeded(value)
        lastOperator = "/"
    }

    func clear() {
        currentResult = 0.0
        lastOperator = nil
        lastValue = nil
    }

    func delete() {
        // Implement deletion logic if necessary
        // For example, you might want to reset lastValue or handle the current input
    }

    func calculate(with value: Double) -> Double {
        calculateIfNeeded(value)
        return currentResult
    }

    private func calculateIfNeeded(_ value: Double) {
        guard let op = lastOperator else {
            currentResult = value
            return
        }

        switch op {
        case "+":
            currentResult += value
        case "-":
            currentResult -= value
        case "*":
            currentResult *= value
        case "/":
            if value != 0 {
                currentResult /= value
            } else {
                print("Error: Division by zero")
            }
        default:
            break
        }
        lastValue = value
    }
}