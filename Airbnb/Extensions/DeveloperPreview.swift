//
//  DeveloperPreview.swift
//  Airbnb
//
//  Created by Tarun Tanwar on 03/06/26.
//

import Foundation

class DeveloperPreview{
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        // Listing 1: Miami Villa
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo-1",
            numberOfBedrooms: 4,
            numberOfBathroom: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936, imageURLs: ["listing-2","listing-3","listing-4",],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        
        // Listing 2: Modern Los Angeles Apartment
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "David Jenkins",
            ownerImageUrl: "male-profile-photo-2",
            numberOfBedrooms: 1,
            numberOfBathroom: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 185,
            latitude: 34.0522,
            longitude: -118.2437, imageURLs: ["listing-5","listing-4","listing-6",],
            address: "742 Evergreen Terrace",
            city: "Los Angeles",
            state: "California",
            title: "Downtown Luxury Loft",
            rating: 4.92,
            features: [.selfCheckIn],
            amenities: [.wifi, .kitchen, .tv, .office],
            type: .apartment
        ),
        
        // Listing 3: Cozy Aspen Mountain House
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Michael Chang",
            ownerImageUrl: "male-profile-photo-3",
            numberOfBedrooms: 3,
            numberOfBathroom: 2,
            numberOfGuests: 6,
            numberOfBeds: 4,
            pricePerNight: 420,
            latitude: 39.1911,
            longitude: -106.8175, imageURLs: ["listing-7","listing-8","listing-6",],
            address: "99 Alpine Ridge Rd",
            city: "Aspen",
            state: "Colorado",
            title: "Charming A-Frame Mountain Cabin",
            rating: 4.78,
            features: [.superHost],
            amenities: [.wifi, .kitchen, .laundry, .alarmSystem],
            type: .house
        ),
        
        // Listing 4: Premium New York Townhouse
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Robert Ross",
            ownerImageUrl: "male-profile-photo-4",
            numberOfBedrooms: 2,
            numberOfBathroom: 2,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 310,
            latitude: 40.7128,
            longitude: -74.0060, imageURLs: ["listing-3","listing-2","listing-4",],
            address: "241 Greenwich St",
            city: "New York",
            state: "New York",
            title: "Historic West Village Townhome",
            rating: 4.95,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .laundry, .tv, .balcony, .office],
            type: .townHouse
        )
    ]
    
}
