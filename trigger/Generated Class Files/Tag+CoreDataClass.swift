//
//  Tag+CoreDataClass.swift
//  trigger
//
//  Created by Alexa Clingerman on 11/26/18.
//  Copyright © 2018 Alexa Clingerman. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Tag)
public class Tag: NSManagedObject {
//    static func createTagEntityFrom(dictionary: [String: AnyObject]) -> NSManagedObject? {
//        
//        let context = CoreDataStack.sharedInstance.persistentContainer.viewContext
//        
//        if let tagEntity = NSEntityDescription.insertNewObject(forEntityName: "Tag", into: context) as? Tag {
//            
//            tagEntity.title = "title" as? String
//            tagEntity.latitude = "latitude" as? String
//            tagEntity.longitude = "longitude" as? String
//            
//            
//            return tagEntity
//            
//        }
//        
//        return nil
//    }
    
    
    static func getAllTags() -> [NSManagedObject] {
        
        // STEP 1: GET A REFERENCE TO THE CORE DATA CONTEXT
        let managedContext = CoreDataStack.sharedInstance.persistentContainer.viewContext
        
        // STEP 2: CREATE A FETCH REQUEST FOR A SPECIFIC ENTITY
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Tag")
        
        // STEP 3: SORT THE OBJECTS
        let sort = NSSortDescriptor(key: "title", ascending: true)
        fetchRequest.sortDescriptors = [sort]
        
        
        // STEP 4: CREATE A COLLECTION (array) OF NSManagedObjects (Films)
        var allTags = [NSManagedObject]()
        
        // STEP 5: EXECUTE THE FETCH REQUEST
        do {
            let results = try managedContext.fetch(fetchRequest) // THE ACTUAL "QUERY"
            allTags = results as! [NSManagedObject]
        } catch let error as NSError {
            print("Could not fetch tags \(error), \(error.userInfo)")
        }
        
        // STEP 6: RETURN THE ARRAY
        return allTags
    }

}
