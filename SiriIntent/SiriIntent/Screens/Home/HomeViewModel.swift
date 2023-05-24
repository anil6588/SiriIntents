//
//  HomeViewModel.swift
//  SiriIntents
//
//  Created by Anil Kothari on 05/03/23.
//

import Foundation

final class HomeViewModel {
    
    init() {
    }
    
    func fetchData() -> HomeResponseModel {
        let model: HomeResponseModel = "result".load()
        return model
    }
}
