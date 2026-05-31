//
//  ListingItemView.swift
//  Airbnb
//
//  Created by Tarun Tanwar on 31/05/26.
//

import SwiftUI

struct ListingItemView: View {
    var images = ["listing-2","listing-3","listing-4",]
    
    
    var body: some View {
        VStack(spacing: 8){
            
            //images
            //this adds horizontal images
            TabView{
                ForEach(images, id: \.self){image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        
                }
                
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            //this function is important for swiping
            //and changing different pics
            
            //listing details
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                    Text("12 mi Away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10 ")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4, ){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("Night")
                        
                    }
                    
                    
                    
                }
                
                //ratings
                Spacer()
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                    
                }
                .font(.footnote)
                
            }
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
