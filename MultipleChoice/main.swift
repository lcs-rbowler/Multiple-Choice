//
//  main.swift
//  MultipleChoice
//

import Foundation

// INPUT
// Collect and filter user input here
var expectedLines = 0
while 1 == 1 {
    print("How many lines?")
    guard let validLines = readLine()else {
        continue
    }
    guard let integerLine = Int(validLines)else {
        continue
    }
    if integerLine < 0 || integerLine > 10000 {
        continue
    }
    expectedLines = integerLine
    break
}

// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Example of how to collect multiple input lines
print("Please enter the \(expectedLines) lines of student answers follow by the \(expectedLines) lines of correct answers for test:")
var arrayOfAnswer : [String] = []
var numberOfCorrectAnswer = 0
for _ in 1...expectedLines*2 {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Add the input to the array
    arrayOfAnswer.append(givenLine)
    
}

print(arrayOfAnswer)


// Start looking at each value of the array
for index in 0...expectedLines - 1 {
    print(arrayOfAnswer[index])
    
    if arrayOfAnswer[index] == arrayOfAnswer[index + expectedLines]
    {
        numberOfCorrectAnswer += 1
        
    }
}
print("The students answer \(numberOfCorrectAnswer) questions correctly.")
// OUTPUT
// Report results to the user here
