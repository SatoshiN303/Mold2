//
//  main.swift
//  Bootstrap
//
//  Created by STSN on 2020/05/27.
//  Copyright © 2020 STSN. All rights reserved.
//

import Foundation

let destUrl = "/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application/"
let templateDir = "Mold2"

func copyTemplate(){
    let fileManager = FileManager.default
    let destinationPath = bash(command: "xcode-select", arguments: ["--print-path"]).appending(destUrl) + templateDir
    
    do {
        // You must run "/boot.swift" in the terminal to find the "Mold2" directory.
        if !fileManager.fileExists(atPath: destinationPath) {
            try fileManager.copyItem(atPath: templateDir, toPath: destinationPath)
            print("\n")
            print("Successfully installed ALL template🍻 \n")
            print("You can use it from [Xcode Menu -> File -> New -> File -> iOS -> Mold2]")
        } else {
            try fileManager.removeItem(atPath: destinationPath)
            try fileManager.copyItem(atPath: templateDir, toPath: destinationPath)
            print("\n")
            print("ALL template updated!!🍻")
        }
    }
    catch let error as NSError {
        print("Error: \(error.localizedFailureReason!)")
    }
}

@discardableResult
func shell(launchPath: String, arguments: [String]) -> String
{
    let process = Process()
    process.launchPath = launchPath
    process.arguments = arguments
    
    let pipe = Pipe()
    process.standardOutput = pipe
    process.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    
    guard let output = String(data: data, encoding: String.Encoding.utf8) else {
        fatalError()
    }
    
    if output.count > 0 {
        let lastIndex = output.index(before: output.endIndex)
        return String(output[output.startIndex ..< lastIndex])
    }

    return output
}

func bash(command: String, arguments: [String]) -> String {
    let command = shell(launchPath: "/bin/bash", arguments: [ "-l", "-c", "which \(command)" ])
    return shell(launchPath: command, arguments: arguments)
}

copyTemplate()


