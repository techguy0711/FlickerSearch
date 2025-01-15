//
//  FlickerUseCases.swift
//  FlickerSearch
//
//  Created by Kristhian De Oliveira on 1/15/25.
//


protocol FlickerUseCases {
    func searchPhotos(query: String) async
    func shareImage(from url: String)
}