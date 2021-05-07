//
//  DataManager.swift
//  moodCalendar
//
//  Created by Ann on 2021-05-06.
//

import Foundation

public class DataManager {
    static fileprivate func getDocumentDirectory() -> URL {
        if let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            return url
        } else {
            fatalError("Unable to access document")
        }
    }
    
    static func save<T:Encodable>(_ object: T, with fileName: String){
        let url = getDocumentDirectory().appendingPathComponent(fileName, isDirectory : false)
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(object)
            if FileManager.default.fileExists(atPath: url.path) {
                try FileManager.default.removeItem(at: url)
            }
            FileManager.default.createFile(atPath: url.path, contents: data, attributes: nil)
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    
    static func loadAll<T: Decodable> (_ type: T.Type) -> [T] {
        do {
            let files = try FileManager.default.contentsOfDirectory(atPath: getDocumentDirectory().path)
            var modelObjects = [T]()
            for fileName in files {
                modelObjects.append(load(fileName))
            }
            return modelObjects
        } catch {
            fatalError("could not load any files")
        }
    }
    
}
