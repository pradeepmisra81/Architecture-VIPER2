//
//  Post+CoreDataProperties.swift
//  VIPER2
//
//  Created by pradeep kumar misra on 15/07/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

import Foundation
import CoreData


extension Post {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Post> {
        return NSFetchRequest<Post>(entityName: "Post");
    }

    @NSManaged public var thumbImageUrl: String?
    @NSManaged public var imageUrl: String?
    @NSManaged public var title: String?
    @NSManaged public var id: Int32

}
