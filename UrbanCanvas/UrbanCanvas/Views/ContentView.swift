//
//  ContentView.swift
//  UrbanCanvas
//
//  Created by Apprenant 85 on 03/07/2026.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
            VStack(alignment : .leading){
                List(streetarts){ streetart in
                    StreetArtRowView(streetart: streetart, isPictured: false)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
