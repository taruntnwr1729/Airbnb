//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by Tarun Tanwar on 02/06/26.
//

//HARDEST PART OF THIS PROJECT

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
    case nothing
}


struct DestinationSearchView: View {
    @Binding var show: Bool
    //We defined this for clear button
    @State private var destination = ""
    //this variable is for clicking animation and functionality
    @State private var selectedOption: DestinationSearchOptions = .nothing
    //these variables are for date picker
    @State private var startDate = Date()
    @State private var endDate = Date()
    //this is for stepper function
    @State private var numGuests = 0
    
    
    var body: some View {
        
//-------------UPPER FUNCTIONALITIES---------------
        VStack{
            HStack{
                Button{
                    withAnimation(.snappy){
                        show.toggle()
                    }
                }label:{
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                }
                Spacer()
                
                if !destination.isEmpty{
                    Button("Clear"){
                        
                        destination = ""
                        
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                }
            }
            .padding()
            
//--------------------------END------------------------------------------
            
            
//-------------------DESTINATION BAR-------------------------------
            
            
            
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
            
            
//--------------------------END------------------------------------------
                        
            
//-------------DATES BAR---------------------------
            VStack(alignment: .leading){
                if (selectedOption == .dates) {
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack{
                        
                        //I Liked this functionality
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $startDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }else {
                    
                    ExtractedView(title: "When", description: "Add dates")
                        
                        }
                    
                }.padding()
                .frame(height: selectedOption == .dates ? 180 : 64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: 10)
            
                .onTapGesture {
                    withAnimation(.snappy){
                        selectedOption = .dates
                    }
            }
            
//--------------------------END------------------------------------------
            
            
            
//-------------GUESTS BAR---------------------------
            VStack(alignment: .leading, spacing: 5){
                if (selectedOption == .guests) {
                        Text("Who's coming?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Spacer()
                        HStack{
                            
                            
                            Stepper{
                                Text("\(numGuests) Adults")
                            }onIncrement: {
                                numGuests = numGuests + 1
                            } onDecrement: {
                                //nice conditional statement
                                guard numGuests > 0 else {return}
                                numGuests = numGuests - 1
                            }
                        
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
        Spacer()
    }
}
//--------------------------END------------------------------------------



#Preview {
        DestinationSearchView(show: .constant(false))
    }
    



struct ExtractedView: View {
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
    

