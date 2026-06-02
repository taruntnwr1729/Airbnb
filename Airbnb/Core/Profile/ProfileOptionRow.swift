//
//  ProfileOptionRow.swift
//  Airbnb
//
//  Created by Tarun Tanwar on 03/06/26.
//

import SwiftUI

struct ProfileOptionRow: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "chevron.right")
                
                
            }
            Divider()
            
        }
    }
}

#Preview {
    ProfileOptionRow(imageName: "gear", title: "Settings")
}
