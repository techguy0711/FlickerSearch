//
//  FlickerMock.swift
//  FlickerSearch
//
//  Created by Kristhian De Oliveira on 1/15/25.
//



import Foundation

class FlickerMock: FlickerUseCases {
    var didCallSearch: Bool = false
    var didCallShare: Bool = false
    func searchPhotos(query: String) async {
        didCallSearch = true
    }
    
    func shareImage(from url: String) {
        didCallShare = true
    }
}
