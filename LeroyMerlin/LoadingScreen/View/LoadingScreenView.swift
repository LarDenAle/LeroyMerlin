//
//  LoadingScreenView.swift
//  LeroyMerlin
//
//  Created by Denis Larin on 17.04.2021.
//

import SwiftUI

struct LoadingScreenView: View {
    
    @State var animate = false
    @State var endSplash = false
    @ObservedObject var nameLoadingLogoV = LoadingLogoVM()
    
    var body: some View {
        ZStack{
        Color(.white)
        Image("\(nameLoadingLogoV.nameLoadingLogoVM.nameLoadingLogo)")
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: animate ? .fill : .fit)
            .frame(width: animate ? nil : 140, height: animate ? nil : 140)
            .scaleEffect(animate ? 10 : 1)
            .frame(width: UIScreen.main.bounds.width)
        }
        .ignoresSafeArea(.all, edges: .all)
        .onAppear(perform: animateSplash)
        .opacity(endSplash ? 0 : 1)
    }
    func animateSplash(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            withAnimation(Animation.easeOut(duration: 0.55)){
                animate.toggle()
            }
            withAnimation(Animation.easeOut(duration: 0.55)){
                endSplash.toggle()
            }
        }
    }
}

struct LoadingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreenView()
    }
}
