//
//  TagCategory+CoreDataProperties.swift
//  trigger
//
//  Created by Alexa Clingerman on 12/5/18.
//  Copyright © 2018 Alexa Clingerman. All rights reserved.
//
//

import Foundation
import CoreData


extension TagCategory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TagCategory> {
        return NSFetchRequest<TagCategory>(entityName: "TagCategory")
    }

    @NSManaged public var title: String?
    @NSManaged public var tags: NSSet?

}

// MARK: Generated accessors for tags
extension TagCategory {

    @objc(addTagsObject:)
    @NSManaged public func addToTags(_ value: Tag)

    @objc(removeTagsObject:)
    @NSManaged public func removeFromTags(_ value: Tag)

    @objc(addTags:)
    @NSManaged public func addToTags(_ values: NSSet)

    @objc(removeTags:)
    @NSManaged public func removeFromTags(_ values: NSSet)

}
