//
//  ExploreView.swift
//  Airbnb
//
//  Created by Tarun Tanwar on 31/05/26.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack{
            if showDestinationSearchView{
                DestinationSearchView(viewModel: viewModel, show: $showDestinationSearchView)
            }else{
                
                ScrollView{
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 32){
                        ForEach(viewModel.listings){ listing in
                            NavigationLink(value: listing){
                                ListingItemView(listing: listing)
                                    .frame(height: 410)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Listing.self) {
                    listing in
                    ListingDetailView(listing: listing)
                
                }
                
                
            }

        }
    }
}


#Preview {
    ExploreView()
}
