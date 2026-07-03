//
//  StreetArtDetailView.swift
//  UrbanCanvas
//
//  Created by Apprenant 85 on 03/07/2026.
//

import SwiftUI
import MapKit



struct StreetArtDetailView: View {
    
    var streetart: StreetArt
    
    var isPictured: Bool
 
    
    var body: some View {
        
        ScrollView{
            Image(isPictured ? "nophoto" : streetart.photo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 410,height: 255)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            VStack(alignment: .leading){
                Text(streetart.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.mainorange)
                    .padding(.top)
                
                
                Text(streetart.description)
                    .font(.callout)
                    .padding(.bottom)
                
                    .frame(maxWidth: 360, minHeight: 100)
                
                HStack{
                    Text("Type :")
                        .font(.callout)
                        .fontWeight(.bold)
                    Text(streetart.type)
                        .font(.callout)
                }
                
                HStack{
                    Text("Condition :")
                        .font(.callout)
                        .fontWeight(.bold)
                    Text(streetart.condition)
                        .font(.callout)
                }
                
                HStack{
                    Text("Date :")
                        .font(.callout)
                        .fontWeight(.bold)
                    Text(streetart.date)
                        .font(.callout)
                }
                
                HStack{
                    Text("Auteur :")
                        .font(.callout)
                        .fontWeight(.bold)
                    Text(streetart.author)
                        .font(.callout)
                }
                
                HStack{
                    Text("Localisation :")
                        .font(.callout)
                        .fontWeight(.bold)
                    Text(streetart.localisation)
                        .font(.footnote)
                }
                HStack{
                    Text("(Latitude : \(streetart.coordinates.latitude), Longitude : \(streetart.coordinates.longitude))")
                        .font(.footnote)
                }
                
                
                
            }
            .padding(.leading,15)
            
            Map(interactionModes: [.rotate, .zoom]){
                
                Annotation(streetart.name, coordinate: streetart.coordinates){
                    Image(streetart.photo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80)
                        .clipShape(.circle)
                    
                }
            }
            .mapStyle(.standard)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .frame(width: 360, height: 160)
            .padding()
            
        }
        .ignoresSafeArea()
        
    }
    
}

#Preview {
    StreetArtDetailView(streetart: streetarts[2], isPictured: false)
}


