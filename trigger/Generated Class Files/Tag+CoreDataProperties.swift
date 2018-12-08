//
//  Tag+CoreDataProperties.swift
//  trigger
//
//  Created by Alexa Clingerman on 12/5/18.
//  Copyright © 2018 Alexa Clingerman. All rights reserved.
//
//

import Foundation
import CoreData


extension Tag {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tag> {
        return NSFetchRequest<Tag>(entityName: "Tag")
    }

    @NSManaged public var lattude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var title: String?
    @NSManaged public var tagCategory: TagCategory?

}
