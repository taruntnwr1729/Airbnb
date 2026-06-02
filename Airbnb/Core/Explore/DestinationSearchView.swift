//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by Tarun Tanwar on 02/06/26.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
    case nothing
}


struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .nothing
    
    var body: some View {
        VStack{
            Button{
                withAnimation(.snappy){
                    show.toggle()
                }
            }label:{
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            VStack(alignment: .leading){
                if (selectedOption == .location){
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search Destination", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                        
                            .foregroundStyle(Color(.systemGray4))
                    }
                    
                } else{
                    ExtractedView(title: "Where", description: "Add destination")
                }
                
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .location
                }
            }
            
            VStack(alignment: .leading, spacing: 5){
                if (selectedOption == .dates) {
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack{
                        Text("From")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        Spacer()
                        
                        Text("Oct 6, 2026")
                            
                            
                    }
                    Divider()
                    
                    HStack{
                        Text("To")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        
                        Spacer()
                        Text("Oct 10, 2026")
                            
                            
                    }
                    
                    
                }else {
                    
                    ExtractedView(title: "When", description: "Add dates")
                        
                        }
                    
                }.padding()
                .frame(height: selectedOption == .dates ? 120 : 64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: 10)
            
                .onTapGesture {
                    withAnimation(.snappy){
                        selectedOption = .dates
                    }
            }
            
            
            VStack(alignment: .leading, spacing: 5){
                if (selectedOption == .guests) {
                        Text("Who's coming?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Spacer()
                        HStack{
                            Text("Adults")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        
                    }
                    Spacer()
                    
                    
                    
                }else {
                    
                    ExtractedView(title: "Who", description: "Add guests")
                        
                        }
                    
                }.padding()
                .frame(height: selectedOption == .guests ? 120 : 64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: 10)
                .onTapGesture {
                    withAnimation(.snappy){
                        selectedOption = .guests
                    }
                }
            
            
           
            
               
                
        }
        
    }
}
    
#Preview {
        DestinationSearchView(show: .constant(false))
    }
    

    
struct ExtractedView: View {
        // 1. Define the properties (Swift automatically creates an initializer for these)
    let title: String
    let description: String
        
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                    Spacer()
                    Text(description)
                        .fontWeight(.semibold)
                        .font(.subheadline)
                }
                
            }
        }
    }
    

