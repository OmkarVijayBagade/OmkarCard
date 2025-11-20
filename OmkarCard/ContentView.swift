//
//  ContentView.swift
//  OmkarCard
//
//  Created by Omkar Vijay Bagade on 18/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var dashPhase1: CGFloat = 0
    @State private var dashPhase2: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.red.opacity(0.95).ignoresSafeArea()

            VStack {
                Image("myImage")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(.circle)
                    .overlay(
                                    Circle()
                                        .stroke(
                                            Color.white,
                                            style: StrokeStyle(
                                                lineWidth: 6,
                                                dash: [4,8],
                                                dashPhase: dashPhase1
                                            )
                                        )
                                        .frame(width: 165, height: 165)
                                )
                    .onAppear {
                        withAnimation(
                            .linear(duration: 50)
                            .repeatForever(autoreverses: false)
                        ) {
                            dashPhase1 = -1000
                        }
                    }

                Text("Omkar Vijay Bagade")
                    .font(.system(size: 32))
                    .fontDesign(.monospaced)
                    .foregroundColor(.white)
                    .padding()

                Text("iOS Developer")
                    .font(.title3)
                    .foregroundColor(.white)
                    .kerning(5)

                Button(action: {
                    if let url = URL(
                        string:
                            "https://www.linkedin.com/in/omkar-bagade-109367259/"
                    ) {
                        UIApplication.shared.open(url)
                    }
                }) {
                    HStack {
                        Image(systemName: "message.fill")
                            .font(Font.system(size: 28))
                            .foregroundColor(.white)

                        Text("LinkedIn")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }
                .frame(width: 200, height: 45)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .padding(.top)

                Button(action: {
                    if let url = URL(
                        string: "https://github.com/OmkarVijayBagade"
                    ) {
                        UIApplication.shared.open(url)
                    }
                }) {
                    HStack {
                        Image(systemName: "dog.fill")
                            .font(Font.system(size: 28))
                            .foregroundColor(.white)

                        Text("GitHub")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }
                .frame(width: 200, height: 45)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .padding(.bottom)

                HStack {
                    Image(systemName: "mail.fill")
                        .font(Font.system(size: 28))
                        .foregroundColor(.black)

                    Text(
                        "Visit my [portfolio](https://omkarvijaybagade.github.io/Portfolio/)."
                    )
                    .tint(Color.black)
                    .font(.title2)
                    .foregroundColor(.white)
                }
                .frame(width: 300, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 50))

            }.padding(.top)

        }

    }
}

#Preview {
    ContentView()
}
