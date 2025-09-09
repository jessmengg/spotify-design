//
//  SpotifyRecentsCell.swift
//  Spotify
//
//  Created by Jessica Meng on 3/7/25.
//

import SwiftUI

struct SpotifyRecentsCell: View {
    
    var imageName: String = "Some random image name"
    var title: String = "Some random title"
    
    var body: some View {
        HStack(spacing: 16) {
            Image(imageName)
                .resizable()
                .frame(width: 55, height: 55)
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .lineLimit(2)
        }
        .padding(.trailing, 8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .themeColors(isSelected: false)
        .cornerRadius(6)
    }
}

#Preview {
    ZStack {
        Color.spotifyBlack.ignoresSafeArea()
        
        VStack {
            HStack {
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
            HStack {
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
        }
    }
}
