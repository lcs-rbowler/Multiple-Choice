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

print("Please enter the \(expectedLines) of text:")
for _ in 1...expectedLines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    var arrayOfAnswer : [String] = []
    
        
}

// OUTPUT
// Report results to the user here


