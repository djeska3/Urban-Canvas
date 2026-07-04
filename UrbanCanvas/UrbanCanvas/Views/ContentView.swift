//
//  ContentView.swift
//  UrbanCanvas
//
//  Created by Apprenant 85 on 03/07/2026.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
            VStack{
                
                HStack{
                    Spacer()
                    Button{
                        
                    }label: {
                        ZStack{
                            Circle()
                                .frame(width: 45)
                                .foregroundStyle(.white)
                            
                            Image(systemName: "line.3.horizontal.decrease.circle")
                                .font(.system(size: 32))
                                .padding(7)
                        }
                        
                        
                    }
                    .tint(.black)
                    .glassEffect(.clear)
                    
                }
                .padding()
                
                NavigationStack{
                    
                    VStack(alignment : .leading){
                        
                        List(streetarts){ streetart in
                            StreetArtRowView(streetart: streetart, isPictured: false)
                            
                        }
                        .scrollContentBackground(.hidden)
                        .padding(.top,10)
                        
                        
                        
                    }
                    .navigationTitle("Liste des Street arts")
                    .background(.quinary)
                    
                }
            }
            .background(.quinary)
        
    }
        
}

#Preview {
    ContentView()
}
