import Foundation
import Calc


let charSet = CharacterSet(charactersIn: "0123456789+-/*_ ")

print("Enter your equation: ")
if let input = readLine()
{
    if input.count > 0
    {
        var raw = input

        raw.unicodeScalars.removeAll(where: { charSet.inverted.contains($0) })
        let equation = raw.trimmingCharacters(in: .whitespacesAndNewlines)

        let calc = Calc(equation)
        if calc.isValid()
        {
            print("\nEquation: \(calc.raw)")

            print("\nAnswer: \(calc.answer())\n")
            exit(EXIT_SUCCESS)
        }

        print("Equation is not valid.")
        exit(EXIT_FAILURE)
    }
}


print("You must enter a equation.")
exit(EXIT_FAILURE)
