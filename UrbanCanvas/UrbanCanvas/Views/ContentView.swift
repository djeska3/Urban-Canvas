//
//  ContentView.swift
//  UrbanCanvas
//
//  Created by Apprenant 85 on 03/07/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPushed = false
    @State private var showFilter = false
    @State var selectedType : String = "Tous"
     var filteredList: [StreetArt] {
             streetarts.filter { $0.type == selectedType }
    }
    
    
    var body: some View {
        
        NavigationStack{
            ZStack {
                VStack(alignment : .leading){
                    
                    Text("Liste des Street arts")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.leading)
                    List(selectedType == "Tous" ? streetarts : filteredList ){ streetart in
                        StreetArtRowView(streetart: streetart, isPictured: false)
                        
                    }
                    .scrollContentBackground(.hidden)
                    
                    if showFilter {
                        
                        
//                                            streetarts.filter{ 0.type == $selectedType}
                        
                        ZStack{
                                               FilterTypeView(selectedType: $selectedType)
                        }
                        
                    }
                }
            }
            .toolbar {
                ToolbarItem (placement: .primaryAction){
                    Button{
                        showFilter.toggle()
                    }label: {
                        ZStack{
                            Image(systemName: "line.3.horizontal.decrease.circle")
                                .font(.system(size: 28))
                                .padding(7)
                                .foregroundStyle(.black)
                        }
                    }
                }
            }
        }
        .background(.quinary)
        
    }
}
//        .background(.quinary)

#Preview {
    ContentView(selectedType: "Tous")
}
