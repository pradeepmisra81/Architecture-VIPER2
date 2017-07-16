//
//  PostDetailPresenter.swift
//  VIPER2
//
//  Created by pradeep kumar misra on 15/07/17.
//  Copyright © 2017 pradeep kumar misra. All rights reserved.
//

class PostDetailPresenter: PostDetailPresenterProtocol {
    
    weak var view: PostDetailViewProtocol?
    var wireFrame: PostDetailWireFrameProtocol?
    var post: PostModel?
    
    func viewDidLoad() {
        view?.showPostDetail(forPost: post!)
    }
    
}

