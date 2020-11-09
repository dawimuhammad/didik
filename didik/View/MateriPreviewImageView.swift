//
//  MateriPreviewImageView.swift
//  didik
//
//  Created by Fandrian Rhamadiansyah on 09/11/20.
//

import SwiftUI

struct MateriPreviewImageView: View {
    let height: CGFloat
    let width: CGFloat
    
    let materi: DummyMateri
    
    var body: some View {
        ZStack {
            Image(systemName: materi.imageName)
                .resizable()
                .scaledToFill()
                .foregroundColor(.black)
            
            HStack {
                
                Spacer()
                VStack(alignment: .center) {
                    ZStack {
                        Rectangle()
                            .frame(width: width/7, height: height/2.75)
                            .foregroundColor(Color.white)
                            .opacity(0.5)
                            .cornerRadius(6)
                        VStack(spacing: 2) {
                            
                            Image(systemName: materi.liked ? "heart.fill" : "heart")
                                .foregroundColor(materi.liked ? .red : .black)
                            Text("\(materi.likes)")
                                .font(.system(size: 13, weight: .regular, design: .default))
                                .foregroundColor(.black)
                            
                        }
                    }
                    
                    Spacer()
                    
                    // duration
                    ZStack {
                        Rectangle()
                            .frame(width: width/7, height: height/2.75)
                            .foregroundColor(.white)
                            .opacity(0.5)
                            .cornerRadius(6)
                        VStack(spacing: 2) {
                            ZStack {
                                Image(K.calendarIcon)
                                    .resizable()
                                    .frame(width : 22.5, height: 25)
                                Text("\(materi.duration)")
                                    .font(.system(size: 13, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .padding(.top, 5)
                                    .padding(.leading, 2)
                            }
                            Text("Hari")
                                .font(.system(size: 13, weight: .regular, design: .default))
                                .foregroundColor(.black)
                            
                        }
                    }
                    
                }
                .frame(width: width/7)
                .padding(10)
                
            }
            .padding(5)
            .frame(width: width, height: height)
            
        }
        .frame(width: width, height: height)
        .cornerRadius(11)
        .clipped()
    }
}

struct MateriPreviewImageView_Previews: PreviewProvider {
    static var previews: some View {
        MateriPreviewImageView(height: 126, width: 230, materi: placeholderMateri)
    }
}
