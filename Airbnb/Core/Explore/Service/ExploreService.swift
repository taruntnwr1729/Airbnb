//
//  ExploreService.swift
//  Airbnb
//
//  Created by Tarun Tanwar on 03/06/26.
//

import Foundation

class ExploreService{
    
    func fetchListings() async throws -> [Listing]{
        return DeveloperPreview.shared.listings
    }
}
