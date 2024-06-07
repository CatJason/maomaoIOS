import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        VStack {
            Spacer()

            // Content views
            ZStack {
                HomeView().opacity(selectedTab == 0 ? 1 : 0)
                SearchView().opacity(selectedTab == 1 ? 1 : 0)
                NotificationsView().opacity(selectedTab == 2 ? 1 : 0)
                MessagesView().opacity(selectedTab == 3 ? 1 : 0)
                ProfileView().opacity(selectedTab == 4 ? 1 : 0)
            }

            Spacer()

            // Custom Tab Bar
            HStack {
                Button(action: {
                    selectedTab = 0
                }) {
                    VStack {
                        Image("home")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("首页")
                            .foregroundColor(.black) // 设置文字为黑色
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity)

                Button(action: {
                    selectedTab = 1
                }) {
                    VStack {
                        Image("discover")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("发现")
                            .foregroundColor(.black) // 设置文字为黑色
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity)

                Button(action: {
                    selectedTab = 2
                }) {
                    VStack {
                        Image("send")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("发送")
                            .foregroundColor(.black) // 设置文字为黑色
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity)

                Button(action: {
                    selectedTab = 3
                }) {
                    VStack {
                        Image("message")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("消息")
                            .foregroundColor(.black) // 设置文字为黑色
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity)

                Button(action: {
                    selectedTab = 4
                }) {
                    VStack {
                        Image("my")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("我的")
                            .foregroundColor(.black) // 设置文字为黑色
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity)
            }
            .background(Color.blue.opacity(0.2)) // 设置导航栏背景为浅蓝色
        }
    }
}

struct HomeView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<36) { index in
                    Image("image\(index % 6)") // Assuming you have images named image0, image1, image2, etc.
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .clipped()
                        .padding(.bottom, 10)
                }
            }
            .padding()
        }
    }
}

struct SearchView: View {
    var body: some View {
        Text("Discover Page")
            .foregroundColor(.black) // 设置文字为黑色
    }
}

struct NotificationsView: View {
    var body: some View {
        Text("Send Page")
            .foregroundColor(.black) // 设置文字为黑色
    }
}

struct MessagesView: View {
    var body: some View {
        Text("Message Page")
            .foregroundColor(.black) // 设置文字为黑色
    }
}

struct ProfileView: View {
    var body: some View {
        Text("My Page")
            .foregroundColor(.black) // 设置文字为黑色
    }
}

#Preview {
    ContentView()
}
