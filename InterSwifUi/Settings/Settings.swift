import SwiftUI

struct Settings: View {
    @Environment(\.colorScheme) private var colorScheme
    @AppStorage("selectedTheme") private var selectedTheme = 0
    @AppStorage("titleOn") private var titleOn: Bool = true
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Общие настройки")) {
                    Toggle(isOn: $titleOn, label: {
                        if titleOn {
                            Text("Заголовки Включены")
                        }else{
                            Text("Заголовки Выключены")
                        }
                    })
                    
                    

                    Picker(selection: $selectedTheme, label: Text("Выберите тему")) {
                        Text("Светлая").tag(0)
                        Text("Темная").tag(1)
                    }
                    .onChange(of: selectedTheme) { newValue in
                        UIApplication.shared.windows.first?.rootViewController?.viewDidAppear(true)
                    }

                    Text(verbatim: "Сейчас включена тема \(colorScheme)")
                }

                Section(header: Text("Информация")) {
                    HStack {
                        Text("Версия приложения")
                        Spacer()
                        Text("1.1.0")
                    }
                }
            }
            .navigationTitle("Настройки")
        }
        .preferredColorScheme(selectedTheme == 0 ? .light : .dark)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
