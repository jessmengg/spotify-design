//
//  GutsPlayer.swift
//  Spotify
//
//  Created by Jessica Meng on 3/8/25.
//

import SwiftUI

struct GutsPlayer: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            VStack {
                HStack {
                    Button(action:  {}, label:  {
                        Image(systemName: "chevron.down")
                    })
                    .padding([.leading,  .trailing])
                    
                    Spacer()
                    
                    Text("GUTS")
                        .font(.callout)
                        .bold()
                        .lineLimit(1)
                    
                    Spacer()
                    
                    Button(action: {}, label:  {
                        Image(systemName: "ellipsis")
                    })
                    .padding([.leading, .trailing])
                }
                .padding(.top)
                
                Spacer()
                
                Image("guts_snoopy")
                    .resizable()
                    .frame(width: 350, height: 350)
                
                Spacer()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("bad idea right?")
                            .font(.largeTitle)
                            .bold()
                            .lineLimit(1)
                        Text("Olivia Rodrigo")
                            .lineLimit(1)
                    }
                    Spacer()
                    
                    Button(action: {}, label:  {
                        Image(systemName: "heart.fill")
                    })
                    .foregroundColor(.accentColor)
                    .font(.title)
                    .padding([.trailing])
                }
                .padding([.leading, .trailing])
                
                ProgressView(value: 0.38)
                    .padding([.leading, .trailing])
                
                Spacer()
                
                HStack {
                    Button(action: {}, label:  {
                        Image(systemName: "shuffle")
                    })
                    .foregroundColor(.accentColor)
                    .padding([.leading, .trailing])
                    
                    Spacer()
                    
                    Button(action: {}, label:  {
                        Image(systemName: "backward.end.fill")
                    })
                    .font(.largeTitle)
                    
                    Button(action: {}, label:  {
                        Image(systemName: "play.circle.fill")
                    })
                    .font(.system(size: 65))
                    .padding([.leading, .trailing])
                    
                    Button(action: {}, label:  {
                        Image(systemName: "forward.end.fill")
                    })
                    .font(.largeTitle)
                    
                    Spacer()
                    
                    Button(action: {}, label:  {
                        Image(systemName: "repeat")
                    })
                    .padding([.leading, .trailing])
                }
                
                Spacer()
                
            }
            .foregroundColor(.white)
        }
    }
}

struct GutsPlayer_Preview: PreviewProvider {
    static var previews: some View {
        GutsPlayer()
    }
}
