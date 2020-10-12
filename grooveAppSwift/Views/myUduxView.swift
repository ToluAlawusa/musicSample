//
//  myUduxView.swift
//  grooveAppSwift
//
//  Created by Tolulope Alawusa on 10/10/2020.
//  Copyright © 2020 Tolulope Alawusa. All rights reserved.
//

import SwiftUI

struct myUduxView: View {
    
    @State var animation = true
    
    var body: some View {
     
    // this read the whole screen area and ignored the safe area based on the type chosen while using its padding to align the view area.
    GeometryReader { proxy in
        VStack {
            // top spacer that allowed the view background extend throughout the content area
            Spacer()
           
            ZStack(alignment: .top) {
                Image("Mask Group 2")
                .resizable()
                .scaledToFit()
                .padding(.vertical,0)
                .padding(.horizontal,0)
                
                Image("Discover Sections")
                .resizable()
                .scaledToFit()
                .clipped()
                .padding(.vertical,0)
     
                HStack {
                    Spacer().frame(width: 0).background(Color.blue)
//                    Spacer().frame(height: 0).background(Color.blue)
        
                    VStack {
                        
                        Image("WIZKID ON BREAKFAST CLUB")
                            .resizable()
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal,50)
                        Image("FEB. 16, 2018")
                            .resizable()
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal,50)
                        
                        Spacer().frame(height: 60).background(Color.blue)
                        
                        HStack{
                           
                            Spacer().frame(width: 10).background(Color.blue)
                            Image("music-player-play")
                                .resizable()
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical,0)
                                .frame(width:15, height: 15)
                            
                            Spacer().frame(width: 0).background(Color.blue)
                            Image("WATCH THE FULL SHOW")
                       
                        }
              
                    }
//                    Spacer().frame(width: 0).background(Color.red)
//                    Image("wizkid-slider-art").resizable()
//                    .scaledToFit()
//                    .clipped()
//                        .frame(width:150, height: 150)
                    Spacer().frame(height: 250)
//                        .background(Color.red)
                }
            }.padding(.vertical,0)
             .padding(.horizontal,0)
             .padding(.top, proxy.safeAreaInsets.top)
           
            HStack {
                Spacer().frame(width:20)
                Image("Magic Playlist")
                    .resizable()
                    .scaledToFit().clipped()
                Spacer().frame(width:20)
                Image("Mood")
                    .resizable()
                    .scaledToFit().clipped()
                Spacer().frame(width:20)
            }.padding(.horizontal,10)
            
            HStack {
                Spacer().frame(width:30)
                Image("Repeat Grid 2")
            }
            
            Image("Repeat Grid 3")
                .resizable()
                .clipped()
                .fixedSize()
                .scaledToFit()
                .padding(.horizontal,10)
            
            HStack {
                
            Image("Music Icon Group")
            Spacer().frame(width:3)
            Image("New This Week")
                .resizable()
                .fixedSize()
                .padding(.horizontal,0)
            Spacer().frame(width:220)
         
            }
            
            Image("Repeat Grid 4")
                .resizable()
                .scaledToFit()
                .fixedSize()
                .clipped()
                .padding(.horizontal,10)
            
            Spacer()
            VStack(){
                Spacer()
                Image("MiniPlayer")
                .resizable()
                .clipped()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical,0)
                .padding(.horizontal,0)
 
            }
            // bottom spacer that allowed the view background extend throughout the content area
            Spacer()
        }
        .background(Image("Mask Group 3")
        .resizable()
        .clipped()
        .scaledToFill())
            
    }.edgesIgnoringSafeArea(.top)
        
    }
}

struct myUduxView_Previews: PreviewProvider {
    static var previews: some View {
        myUduxView()
    }
}
