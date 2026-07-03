//
//  StreetArtRowView.swift
//  UrbanCanvas
//
//  Created by Apprenant 85 on 03/07/2026.
//

import SwiftUI

struct StreetArtRowView: View {
    var streetart: StreetArt
    
    @State var isPictured: Bool
    
    var body: some View {
      
        NavigationLink(destination: StreetArtDetailView(streetart: streetart, isPictured: false)){
                
                
                HStack{
                    Image(isPictured ? "nophoto" : streetart.photo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 75, height: 75)
                        .clipShape(.circle)
                    
                    VStack(alignment: .leading){
                        Text(streetart.name)
                            .font(.title2)
                            .foregroundStyle(.black)
                            .multilineTextAlignment(.leading)
                        
                        
                        HStack(spacing: 7){
                            Image(systemName: streetart.icon)
                                .foregroundStyle(.secondtext)
                                .font(.title3)
                            Text(streetart.city)
                                .foregroundStyle(.secondtext)
                                .font(.title3)
                            
                            
                        }
                        
                        
                        
                    }
                    
                    
               
            }
        }
    }
}

#Preview {
    StreetArtRowView(streetart: streetarts[0], isPictured: false)
}
