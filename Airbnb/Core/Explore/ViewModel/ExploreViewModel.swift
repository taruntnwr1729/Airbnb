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
    private let service: ExploreService
    
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
        } catch {
            print("DEBUG: FAILED TO FETCH LISTING WITH ERROR: \(error.localizedDescription)")
        }
    }
}
