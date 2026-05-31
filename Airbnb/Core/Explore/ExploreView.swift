//
//  ExploreView.swift
//  Airbnb
//
//  Created by Tarun Tanwar on 31/05/26.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(0...10, id: \.self){ listing in
                        ListingItemView()
                            .frame(height: 410)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                
            }
        }
    }
}

#Preview {
    ExploreView()
}
