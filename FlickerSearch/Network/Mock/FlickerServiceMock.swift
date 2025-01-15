//
//  FlickerServiceMock.swift
//  FlickerSearch
//
//  Created by Kristhian De Oliveira on 1/15/25.
//



import Foundation
import Combine

class FlickerServiceMock: FlickerServiceUseCases {
    var didCallSearchFunc: Bool = false
    func searchPhotos(for query: String) -> AnyPublisher<Flicker, any Error> {
        didCallSearchFunc = true
        return URLSession.shared.dataTaskPublisher(for: URL(string: "https://flicker.com/")!)
            .receive(on: DispatchQueue.main)
            .map(\.data)
            .decode(type: Flicker.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()

    }
}
