//
//  Settings.swift
//  InterSwifUi
//
//  Created by Никита  on 04.03.2024.
//

import SwiftUI

struct Settings: View {
    var body: some View {
           NavigationView {
               Form {
                   Section(header: Text("Общие настройки")) {
                       Toggle(isOn: .constant(true), label: {
                           Text("Включить уведомления")
                       })
                       
                       Picker(selection: .constant(0), label: Text("Выберите тему")) {
                           Text("Светлая").tag(0)
                           Text("Темная").tag(1)
                       }
                   }

                   Section(header: Text("Звук и вибрация")) {
                       Toggle(isOn: .constant(false), label: {
                           Text("Включить звук")
                       })

                       Slider(value: .constant(50), in: 0...100, label: {
                           Text("Громкость звука")
                       })
                   }

                   Section(header: Text("Информация")) {
                       HStack {
                           Text("Версия приложения")
                           Spacer()
                           Text("1.0.0")
                       }
                   }
               }
               .navigationTitle("Настройки")
           }
       }
   }


#Preview {
    Settings()
}
