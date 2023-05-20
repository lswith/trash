import Foundation

func trashFile(atPath path: String) {
    let fileManager = FileManager.default
    let fileURL = URL(fileURLWithPath: path)

    do {
        try fileManager.trashItem(at: fileURL, resultingItemURL: nil)
        print("Trashed: \(path)")
    } catch {
        print("Failed to trash: \(path)")
    }
}

// Usage: swift-trash.swift "path/to/file.txt"

if CommandLine.arguments.count != 2 {
    print("Usage: swift-trash.swift \"path/to/file.txt\"")
} else {
    let filePath = CommandLine.arguments[1]
    trashFile(atPath: filePath)
}
