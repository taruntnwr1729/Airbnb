//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Tarun Tanwar on 03/06/26.
//
// I HAVE CHANGED THIS -------------------
import Foundation
import Combine // Note: Standard 'import Combine' is preferred over 'internal import'

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = " "
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    // Accept the service as a parameter
    init(service: ExploreService) {
        self.service = service
        
        // Optional: Automatically fetch when the ViewModel is created
        Task { await fetchListings() }
    }
    
    // Added @MainActor to ensure UI updates happen safely on the main thread
    @MainActor
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            self.listingsCopy = listings
        } catch {
            print("DEBUG: FAILED TO FETCH LISTING WITH ERROR: \(error.localizedDescription)")
        }
    }
    func updateListingsForLocation() {
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listings : filteredListings
    }
}
