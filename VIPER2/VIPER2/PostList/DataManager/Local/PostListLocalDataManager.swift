//
//  PostListLocalDataManager.swift
//  VIPER2
//
//  Created by pradeep kumar misra on 15/07/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

import CoreData

class PostListLocalDataManager:PostListLocalDataManagerInputProtocol {
    
    func retrievePostList() throws -> [Post]  {
        
        guard let managedOC = CoreDataStore.managedObjectContext else {
            throw PersistenceError.managedObjectContextNotFound
        }
        
        let request: NSFetchRequest<Post> = NSFetchRequest(entityName: String(describing: Post.self))
        
        return try managedOC.fetch(request)
    }
    
    func savePost(id: Int, title: String, imageUrl: String, thumbImageUrl: String) throws {
        guard let managedOC = CoreDataStore.managedObjectContext else {
            throw PersistenceError.managedObjectContextNotFound
        }
        
        if let newPost = NSEntityDescription.entity(forEntityName: "Post",
                                                           in: managedOC) {
            let post = Post(entity: newPost, insertInto: managedOC)
            post.id = Int32(id)
            post.title = title
            post.imageUrl = imageUrl
            post.thumbImageUrl = thumbImageUrl
            try managedOC.save()
        }
        throw PersistenceError.couldNotSaveObject
    
    }
    
}
