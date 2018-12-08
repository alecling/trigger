//
//  TageCategory+CoreDataClass.swift
//  trigger
//
//  Created by Alexa Clingerman on 11/26/18.
//  Copyright © 2018 Alexa Clingerman. All rights reserved.
//
//

import Foundation
import CoreData

@objc(TageCategory)
public class TagCategory: NSManagedObject {
    
    static func createTagCategoryEntityFrom(TagCategoryName: String) {
        
        let context = CoreDataStack.sharedInstance.persistentContainer.viewContext
        
        if let tagCategoryEntity = NSEntityDescription.insertNewObject(forEntityName: "TagCategory", into: context) as? TagCategory {
            
            tagCategoryEntity.title = TagCategoryName
            
            do{
                try CoreDataStack.sharedInstance.persistentContainer.viewContext.save()
            }
                
            catch let error {
                
                print(error)
            }
            
        }
        
    }
    
    
    static func getAllTagCategories() -> [NSManagedObject] {
        
        // STEP 1: GET A REFERENCE TO THE CORE DATA CONTEXT
        let managedContext = CoreDataStack.sharedInstance.persistentContainer.viewContext
        
        // STEP 2: CREATE A FETCH REQUEST FOR A SPECIFIC ENTITY
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "TagCategory")
        
        // STEP 3: SORT THE OBJECTS
        let sort = NSSortDescriptor(key: "title", ascending: true)
        fetchRequest.sortDescriptors = [sort]
        
        
        // STEP 4: CREATE A COLLECTION (array) OF NSManagedObjects (Films)
        var allTagCategories = [NSManagedObject]()
        
        // STEP 5: EXECUTE THE FETCH REQUEST
        do {
            let results = try managedContext.fetch(fetchRequest) // THE ACTUAL "QUERY"
            allTagCategories = results as! [NSManagedObject]
        } catch let error as NSError {
            print("Could not fetch tag categories \(error), \(error.userInfo)")
        }
        
        // STEP 6: RETURN THE ARRAY
        return allTagCategories
    }
    
    
}


