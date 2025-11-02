# SwiftUI Weather Clone

Um clone fiel do aplicativo Tempo nativo do iOS, construído com SwiftUI e The Composable Architecture (TCA).

## 🎯 Objetivo

Este projeto tem como objetivo replicar com máxima fidelidade o design e comportamento do app Tempo do iOS, incluindo:

- Interface idêntica ao app original
- Animações suaves e fluidas
- Ícones dinâmicos de clima
- Suporte completo a modo claro e escuro
- Experiência de usuário autêntica

## 🚀 Tecnologias Utilizadas

- **SwiftUI** - Framework moderno para construção de interfaces
- **The Composable Architecture (TCA)** - Arquitetura para gerenciamento de estado
- **Combine** - Framework reativo para programação assíncrona
- **OpenWeather API** - API pública para dados meteorológicos
- **Core Location** - Para localização e geolocalização

## 🛠️ Funcionalidades

- [x] Estrutura inicial do projeto
- [ ] Interface principal com design idêntico ao iOS
- [ ] Integração com API de clima
- [ ] Animações personalizadas
- [ ] Ícones dinâmicos baseados no clima
- [ ] Suporte a múltiplas localizações
- [ ] Modo claro e escuro
- [ ] Dados de previsão de 7 dias
- [ ] Gráficos de temperatura horária
- [ ] Informações detalhadas (UV, umidade, vento, etc.)

## 📱 Estrutura do Projeto

```
SwiftUIWeatherClone/
├── App/
│   ├── SwiftUIWeatherCloneApp.swift
│   └── AppDelegate.swift
├── Features/
│   ├── Weather/
│   │   ├── Views/
│   │   ├── Models/
│   │   └── Store/
│   └── LocationSearch/
├── Core/
│   ├── Extensions/
│   ├── Utilities/
│   └── Theme/
├── Services/
│   ├── WeatherService/
│   └── LocationService/
├── Resources/
│   ├── Assets.xcassets
│   └── Info.plist
└── Tests/
    ├── WeatherTests/
    └── WeatherUITests/
```

## ⚙️ Como Rodar o Projeto

### Pré-requisitos

- Xcode 15.0 ou superior
- iOS 17.0+ (target mínimo)
- macOS 14.0+ para desenvolvimento
- Conta na OpenWeather API (gratuita)

### Instalação

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/gabrielpaiva-projects/swiftui-weather-clone.git
   cd swiftui-weather-clone
   ```

2. **Abra o projeto no Xcode:**
   ```bash
   open SwiftUIWeatherClone.xcodeproj
   ```

3. **Configure a API Key:**
   - Cadastre-se em [OpenWeather API](https://openweathermap.org/api)
   - Crie um arquivo `Config.plist` na pasta `Resources/`
   - Adicione sua API key:
   ```xml
   <?xml version="1.0" encoding="UTF-8"?>
   <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
   <plist version="1.0">
   <dict>
       <key>OPENWEATHER_API_KEY</key>
       <string>SUA_API_KEY_AQUI</string>
   </dict>
   </plist>
   ```

4. **Instale dependências:**
   - O projeto usa Swift Package Manager
   - As dependências serão instaladas automaticamente pelo Xcode

5. **Execute o projeto:**
   - Selecione um simulador iOS 17.0+
   - Pressione `Cmd + R` para executar

## 📝 Dependências

- [ComposableArchitecture](https://github.com/pointfreeco/swift-composable-architecture) - Arquitetura para gerenciamento de estado

## 🎨 Design System

O projeto segue fielmente as diretrizes de design do iOS:

- **Tipografia:** SF Pro (sistema)
- **Cores:** Palheta nativa do iOS com suporte a modo escuro
- **Espaçamentos:** Grid de 8pt baseado no Human Interface Guidelines
- **Ícones:** SF Symbols e ícones customizados para clima
- **Animações:** Curvas de timing nativas do iOS

## 🔄 Roadmap

- **Fase 1:** Estrutura básica e integração com API
- **Fase 2:** Interface principal e navegação
- **Fase 3:** Animações e microinterações
- **Fase 4:** Funcionalidades avançadas e otimizações
- **Fase 5:** Testes e documentação completa

## 🤝 Contribuição

Contribuições são bem-vindas! Por favor:

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📜 Licença

Este projeto é licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para detalhes.

## 📧 Contato

- **Desenvolvedor:** Gabriel Paiva
- **GitHub:** [@gabrielpaiva-projects](https://github.com/gabrielpaiva-projects)

---

> **Nota:** Este é um projeto educacional para demonstração de habilidades em SwiftUI e TCA. Não há afiliação com a Apple Inc.