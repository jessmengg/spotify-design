//
//  SpotifyHomeView.swift
//  Spotify
//
//  Created by Jessica Meng on 3/7/25.
//

import SwiftUI

struct SpotifyHomeView: View {
    
    @State private var selectedCategory : Category? = nil
    let columns: [GridItem] = [
        GridItem(.fixed(180), spacing: nil, alignment: nil),
        GridItem(.fixed(180), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()
            
            ScrollView(.vertical) {
                LazyVStack(spacing: 1, pinnedViews: [.sectionHeaders], content: {
                    Section {
                        VStack(spacing: 16) {
                            LazyVGrid(columns: columns) {
                                SpotifyRecentsCell(imageName: "minor_snoopy", title: "Friend")
                                SpotifyRecentsCell(imageName: "guts_snoopy", title: "bad idea right?")
                                SpotifyRecentsCell(imageName: "guts_snoopy", title: "lacy")
                                SpotifyRecentsCell(imageName: "minor_snoopy", title: "21")
                                SpotifyRecentsCell(imageName: "minor_snoopy", title: "I miss you, I'm sorry")
                                SpotifyRecentsCell(imageName: "guts_snoopy", title: "love is embarrassing")
                                SpotifyRecentsCell(imageName: "guts_snoopy", title: "get him back!")
                                SpotifyRecentsCell(imageName: "minor_snoopy", title: "minor")
                            }
                            
                            Spacer()
                            
                            SpotifyNewReleaseCell(
                                imageName: "guts_snoopy",
                                headline: "New Music",
                                subheadline: "Olivia Rodrigo",
                                title: "bad idea right?",
                                subtitle: "GUTS",
                                onAddToPlaylistPressed: {
                                    
                                },
                                onPlayPressed: {
                                    
                                }
                            )
                            
                            Spacer()
                            
                            SpotifyNewReleaseCell(
                                imageName: "minor_snoopy",
                                headline: "New Music",
                                subheadline: "Gracie Abrams",
                                title: "Friend",
                                subtitle: "minor",
                                onAddToPlaylistPressed: {
                                    
                                },
                                onPlayPressed: {
                                    
                                }
                            )
                        }
                        .padding(.horizontal, 16)
                    } header: {
                        header
                    }
                })
                .padding(.top, 8)
            }
            .scrollIndicators(.hidden)
            .clipped()
        }
        .toolbar(.hidden, for: .navigationBar)
    }
    
    private var header: some View {
        HStack(spacing: 0) {
            ZStack {
                Image("axolotl_music")
                    .resizable()
                    .background(.spotifyWhite)
                    .clipShape(Circle())
            }
            .frame(width: 35, height: 35)
            
            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach(Category.allCases, id: \.self) { category in
                        SpotifyCategoryCell(
                            title: category.rawValue.capitalized,
                            isSelected: category == selectedCategory
                        )
                        .onTapGesture {
                            selectedCategory = category
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
            .scrollIndicators(.hidden)
        }
        .padding(.vertical, 24)
        .padding(.leading, 8)
        .background(.spotifyBlack)
    }
}

#Preview {
    SpotifyHomeView()
}
