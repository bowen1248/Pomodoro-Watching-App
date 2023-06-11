//
//  MainMenu.swift
//  PomadoraWatch
//
//  Created by hsnl on 2023/5/1.
//

import SwiftUI

struct MainMenuView: View {
    let user = User(fullname: "Bowen",
                    email: "test@gmail.com",
                    uid: NSUUID().uuidString)
    @State private var showSideMenu = false
    @ObservedObject private var viewModel = MainMenuViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .leading) {
                ZStack(alignment: .top) {
                    SideMenuButton(showSideMenu: $showSideMenu)
                    
                    Rectangle()
                        .frame(height: 1)
                        .opacity(0.7)
                        .foregroundColor(Color(.orange))
                        .shadow(color: .black.opacity(0.7), radius: 4)
                        .padding(.top, 50)
                    
                    background
                    tomatoTimer
                }
                .offset(x: showSideMenu ? 300 : 0)
                
                if showSideMenu {
                    ZStack {
                        Color.white
                            .shadow(color: showSideMenu ? .black : .clear,
                                    radius: 10)
                        SideMenuView(user: user)
                    }
                    .ignoresSafeArea()
                    .frame(width: 300)
                }
            }
            .onAppear {
                showSideMenu = false
                TodoService.shared.fetchTasks()
            }
        }
        .toolbar(.hidden)
    }
}


extension MainMenuView {
    var background: some View {
        HStack(alignment: .top) {
            VStack {
                Image("pumpkin_right")
                    .padding(.bottom, 250)
                Image("green_pepper_right")
                    .padding(.leading, -35)
            }
            .padding(.top, 20)
            
            Spacer()

            VStack {
                Image("green_pepper_left")
                    .padding(.bottom, 250)
                    .padding(.leading, 16)
                Image("pumpkin_left")
                    .padding(.leading, 5)
            }
        }
        .padding(.top, 50)
    }
    
    var tomatoTimer: some View {
        VStack(alignment: .center) {
            ZStack(alignment: .top) {
                Image("tomato")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                Text(viewModel.timeText)
                    .font(.system(size: 60, weight: .semibold))
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2)
                    .padding(.top, 140)
            }
            .padding(.top, 200)
            
            Text("任務：完成Lab9作業")
                .font(.system(size: 24, weight: .semibold))
                .padding(.top)
            
            Button {
                TomatoTimingService.shared.startActiveCountdown()
                /*
                if viewModel.isStart == false {
                    viewModel.startTimer()
                    
                } else {
                    viewModel.pauseTimer()
                }
                print(viewModel.timeText)
                 */
            } label: {
                Ellipse()
                    .foregroundColor(.cyan)
                    .opacity(0.7)
                    .overlay {
                        Text("主動計時")
                            .foregroundColor(.black)
                    }
                    .frame(width: 150, height: 60)
                    .padding(.top, 10)
            }
        }
    }

}


struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MainMenuView()
        }
    }
}
