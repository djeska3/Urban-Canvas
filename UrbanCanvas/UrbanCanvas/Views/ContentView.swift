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
    
    var body: some View {
        
        NavigationStack{
            
            VStack(alignment : .leading){
                
                Text("Liste des Street arts")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                List(streetarts){ streetart in
                    StreetArtRowView(streetart: streetart, isPictured: false)
                    
                }
                .scrollContentBackground(.hidden)
                
            }
            .background(.quinary)
            .toolbar {
                ToolbarItem (placement: .primaryAction){
                    Button{
                        
                        if isPushed {
                            showFilter = true
                            
                        } else {
                          
                        }
                        isPushed.toggle()
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
           
            if showFilter {
                
                ZStack{
                    FilterTypeView()
                    
                }
           
            }

            
        }
        .background(.quinary)
    }
}

#Preview {
    ContentView()
}
