//
//  ContentView.swift
//  didik
//
//  Created by Haddawi on 26/10/20.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var signInCoordinator: SignInWithAppleCoordinator
    
    var body: some View {
        GeometryReader { geometry in

            ZStack{
                if signInCoordinator.isUserAuthenticated == .signedIn {
                    HomeView(parentGeometry: geometry)
                        .environmentObject(ProjectDatabaseViewModel())
                }
                else if signInCoordinator.isUserAuthenticated == .signedOut {
                    SignInView()
                }
                else {
                    SignInView()
                }
            }
        
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SignInWithAppleCoordinator())
            .previewDevice("iPad (8th generation)")
    }
}
