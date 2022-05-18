//
//  ContentView.swift
//  CameraAppSpeedrun
//
//  Created by Andrew Erickson on 2022-05-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "bolt.fill")
                    .padding(4)
                    .background(Circle().stroke(.white, lineWidth: 1).opacity(0.8))
                Spacer()
                Image(systemName: "chevron.up")
                    .padding(8)
                    .background(Circle().foregroundColor(.white.opacity(0.15)))
                Spacer()
                Image(systemName: "livephoto")
                    .imageScale(.large)
            }
            .foregroundColor(.white)
            .padding(.horizontal, 12)
            .padding(.top, 64)
            .padding(.bottom, 32)
            .background(Color.black.opacity(0.4))

            Spacer()

            HStack {
                Text("0,5")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(8)
                    .background(
                        Circle().foregroundColor(.black.opacity(0.2))
                    )
                Text("1x")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.mustard)
                    .padding(12)
                    .background(
                        Circle().foregroundColor(.black.opacity(0.2))
                    )
                Text("3")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(8)
                    .background(
                        Circle().foregroundColor(.black.opacity(0.2))
                    )
            }
            .foregroundColor(.white)

            VStack {
                HStack {
                    Group {
                    Spacer()
                    Text("CINEMATIC")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("VIDEO")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("PHOTO")
                        .fontWeight(.semibold)
                        .foregroundColor(.mustard)
                    }
                    Spacer()
                    Text("PORTRAIT")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("PANO")
                        .fontWeight(.semibold)
                    Spacer()
                }
                .font(.caption)
                .foregroundColor(.white)
                .padding()

                HStack {
                    Image("IMG_3751")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(12)
                    Spacer()
                    ZStack {
                        Circle()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width: 72, height: 72)
                            .foregroundColor(.black)
                        Circle()
                            .frame(width: 68, height: 68)
                            .foregroundColor(.white)
                    }

                    Spacer()

                    Image(systemName: "arrow.triangle.2.circlepath")
                        .imageScale(.large)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Circle().foregroundColor(.white.opacity(0.2)))
                }
                .padding()
                .padding(.bottom, 32)
            }
            .background(Color.black.opacity(0.4))

        }
        .ignoresSafeArea()
        .background(
            Image("IMG_3751")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        )
    }
}

extension Color {
    static let mustard = Color(.sRGB, red: 251 / 255, green: 210 / 255, blue: 64 / 255, opacity: 1)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
