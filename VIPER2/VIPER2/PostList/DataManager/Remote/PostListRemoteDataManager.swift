//
//  PostListRemoteDataManager.swift
//  VIPER2
//
//  Created by pradeep kumar misra on 15/07/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class PostListRemoteDataManager:PostListRemoteDataManagerInputProtocol {
    
    var remoteRequestHandler: PostListRemoteDataManagerOutputProtocol?
    
    func retrievePostList() {
        Alamofire
            .request(Endpoints.Posts.fetch.url, method: .get)
            .validate()
            .responseArray(completionHandler: { (response: DataResponse<[PostModel]>) in
                switch response.result {
                case .success(let posts):
                    self.remoteRequestHandler?.onPostsRetrieved(posts)
            
                case .failure( _):
                    self.remoteRequestHandler?.onError()
                }
            })
    }
    
}
