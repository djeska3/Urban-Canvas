//
//  FilterTypeView.swift
//  UrbanCanvas
//
//  Created by Apprenant 85 on 04/07/2026.
//

import SwiftUI


struct FilterTypeView: View {
    
    @Binding var selectedType : String 
    
    var types = ["Tous",
                 "Invader",
                 "Mosaïque",
                 "Mural",
                 "Stencil",
                 "Calligraphie",
                 "Harlftone"]
    
    var body: some View {
        
        
            
            ZStack{
                RoundedRectangle(cornerRadius: 32)
                    .frame(width: 300, height: 500)
                    .foregroundStyle(.white.opacity(0.2))
            
                VStack(alignment: .leading, spacing: 7){
                    
                    Text("Liste des filtres")
                        .fontWeight(.semibold)
                        .padding(.leading,10)
                        .foregroundStyle(.black)
                    
                    Text("Choisissez un type d'art")
                        .padding(10)
                        .foregroundStyle(.black)
                    
                    ForEach(types, id: \.self) { type in
                        ZStack{
                            Capsule()
                                .frame(width: 270, height: 50)
                                .foregroundStyle(.gray.opacity(0.2))
                            Button {
                                selectedType = type
                                                               
                                
                            } label : {
                                Text(type)
                                    .foregroundStyle(selectedType == type  ? .red : .black)
                                    .font(.title2)
                            }
                        }
                    }
                }
                    //                            Button{
                    //
                    //                            }label: {
//                                                    ZStack{
//                                                        Capsule()
//                                                            .frame(width: 270, height: 50)
//                                                            .foregroundStyle(.gray.opacity(0.2))
                    //                                    Text("Tous")
//                                                            .foregroundStyle(.red)
//                                                            .font(.title2)
                    //                                }
                    //                            }
                    //
                    //                            Button{
                    //                                if isSelected{
                    //
                    //                                }
                    //
                    //                            }label: {
                    //                                ZStack{
                    //                                    Capsule()
                    //                                        .frame(width: 270, height: 50)
                    //                                        .foregroundStyle(.gray.opacity(0.2))
                    //                                    Text("Invaders")
                    //                                        .foregroundStyle(.black)
                    //                                        .font(.title2)
                    //                                }
                    //                            }
                    //
                    //                            Button{
                    //
                    //                            }label: {
                    //                                ZStack{
                    //                                    Capsule()
                    //                                        .frame(width: 270, height: 50)
                    //                                        .foregroundStyle(.gray.opacity(0.2))
                    //                                    Text("Mosaïques")
                    //                                        .foregroundStyle(.black)
                    //                                        .font(.title2)
                    //                                }
                    //                            }
                    //
                    //                            Button{
                    //
                    //                            }label: {
                    //                                ZStack{
                    //                                    Capsule()
                    //                                        .frame(width: 270, height: 50)
                    //                                        .foregroundStyle(.gray.opacity(0.2))
                    //                                    Text("Mural")
                    //                                        .foregroundStyle(.black)
                    //                                        .font(.title2)
                    //                                }
                    //                            }
                    //
                    //                            Button{
                    //
                    //                            }label: {
                    //                                ZStack{
                    //                                    Capsule()
                    //                                        .frame(width: 270, height: 50)
                    //                                        .foregroundStyle(.gray.opacity(0.2))
                    //                                    Text("Stencil")
                    //                                        .foregroundStyle(.black)
                    //                                        .font(.title2)
                    //                                }
                    //                            }
                    //
                    //                            Button{
                    //
                    //                            }label: {
                    //                                ZStack{
                    //                                    Capsule()
                    //                                        .frame(width: 270, height: 50)
                    //                                        .foregroundStyle(.gray.opacity(0.2))
                    //                                    Text("Calligraphie")
                    //                                        .foregroundStyle(.black)
                    //                                        .font(.title2)
                    //                                }
                    //                            }
                    //
                    //                            Button{
                    //
                    //                            }label: {
                    //                                ZStack{
                    //                                    Capsule()
                    //                                        .frame(width: 270, height: 50)
                    //                                        .foregroundStyle(.gray.opacity(0.2))
                    //                                    Text("Harlftone")
                    //                                        .foregroundStyle(.black)
                    //                                        .font(.title2)
                    //                                }
                    //                            }
                    //
                    //
                    //                        }
                }
                
                
                
            }
            
        }
    
    #Preview {
        FilterTypeView(selectedType: .constant("Tous"))
    }
