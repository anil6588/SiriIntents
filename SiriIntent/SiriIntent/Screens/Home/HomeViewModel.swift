//
//  HomeViewModel.swift
//  SiriIntents
//
//  Created by Anil Kothari on 05/03/23.
//

import Foundation

final class HomeViewModel {
    enum Event {
        case screenAppear
    }
    
    init() {
    }
    
    func dispatch(event: Event) {
        switch event {
        case .screenAppear:
            fetchNasaTodayImage()
        }
    }
    
    private func fetchNasaTodayImage() {
        
    }
}
