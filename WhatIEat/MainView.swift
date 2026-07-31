//
//  MainView.swift
//  WhatIEat
//
//  Created by 송성용 on 7/31/26.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            Text("오늘 뭐먹을까~~")
                .padding(.top, 80)
                .font(.system(size: 30, weight: .bold))
            
            Image(systemName: "arrow.down")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding(.top, 50)
            
            ImageView()
            
            CafeteriasView()

            Spacer()
        }
    }
}

struct ImageView: View {
    var body: some View {
        Image(systemName: "arrow.up.folder")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
            .padding(.top, 50)
    }
}

struct CafeteriasView: View {
    var body: some View {
        VStack() {
            Text("제육볶음")
                .font(.system(size: 25, weight: .semibold))
            
            HStack {
                Text("맛사랑")
                    .font(.system(size: 18, weight: .semibold))

                Spacer()
            }
            .padding(.top, 10)
            .padding(.leading, 50)
            
            RatingView()
            .padding(.leading, 50)
            .padding(.top, 1)
            
            HStack {
                Text("가격: 8000원")
                    .font(.system(size: 18, weight: .medium))

                Spacer()
            }
            .padding(.leading, 50)
            .padding(.top, 1)

        }
        .frame(maxWidth: .infinity)
        .padding(.top, 10)
    }
}

struct RatingView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 1) {
            Text("별점")
                .font(.system(size: 18, weight: .medium))
                .padding(.trailing, 10)
            
            Image(systemName: "star.fill")
            Image(systemName: "star.fill")
            Image(systemName: "star.fill")
            Image(systemName: "star.fill")
            Image(systemName: "star")

            Spacer()
        }
    }
}

#Preview {
    MainView()
}
