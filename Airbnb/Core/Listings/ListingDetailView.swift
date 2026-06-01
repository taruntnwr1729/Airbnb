//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by Tarun Tanwar on 01/06/26.
//

import SwiftUI

struct ListingDetailView: View {
    
    
    
    var body: some View {
        ScrollView{
            
            ListingImageCarouselView()
            .frame(height: 320)
            
            .tabViewStyle(.page)
            
            VStack(alignment: .leading, spacing: 8){
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    
                    .foregroundStyle(.black)
                    Text("Miami Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
        }
        
    }
}

#Preview {
    ListingDetailView()
}
