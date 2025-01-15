//
//  FlickerServiceUseCases.swift
//  FlickerSearch
//
//  Created by Kristhian De Oliveira on 1/15/25.
//


import Foundation
import Combine

protocol FlickerServiceUseCases {
    func searchPhotos(for query: String) -> AnyPublisher<Flicker, Error>
}