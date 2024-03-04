//
//  TabBar.swift
//  InterSwifUi
//
//  Created by Никита  on 04.03.2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            InfoView()
                .tabItem {
                    Label("Каталог",systemImage: "cart")
            }
                
            
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "globe")
            }

                // Добавьте ваш третий tabItem здесь
            Settings()
            .tabItem {
                Label("Настройки", systemImage: "gear")
            }
        }
    }
}

#Preview {
    TabBar()
}
