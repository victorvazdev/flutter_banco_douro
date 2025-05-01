# 📱 Flutter Banco d'Ouro

**Flutter Banco d'Ouro** é um aplicativo Flutter que simula um sistema bancário com interface gráfica. Permite ao usuário visualizar contas, cadastrar novas, e realizar transações financeiras com persistência de dados via GitHub Gists API. O sistema inclui autenticação visual simples, feedback visual com `SnackBar`, `FutureBuilder`, e organização com `StreamController`.

![Banco dOuro](https://github.com/user-attachments/assets/9024d4fa-c1d0-40bb-86ce-464aeccaa5b6)


---

## 🚀 Funcionalidades

- 👤 Tela de login com tema personalizado
- 📋 Listagem de contas cadastradas com exibição responsiva
- ➕ Cadastro de nova conta via modal interativo
- 🔁 Simulação de transações entre contas com taxas variáveis
- 🔄 Atualização automática da lista com `RefreshIndicator`
- 📡 Integração com GitHub Gist para armazenamento remoto

---

## 🧱 Estrutura

```
lib/
├── models/               # Account e Transaction
├── services/             # Integração com API GitHub
├── exceptions/           # Exceções personalizadas
├── helpers/              # Validação e cálculo de taxas
├── ui/
│   ├── home_screen.dart
│   ├── login_screen.dart
│   └── widgets/          # AccountWidget, AddAccountModal
│   └── styles/           # Cores da aplicação
main.dart
```

---

## ▶️ Como Executar

1. Clone o repositório:

```bash
git clone <seu-repo>
cd flutter_banco_douro
```

2. Instale as dependências:

```bash
flutter pub get
```

3. Configure sua chave de API no arquivo:

```dart
// lib/services/api_key.dart
const String githubApiKey = 'sua_chave_aqui';
```

4. Execute o aplicativo:

```bash
flutter run
```

---

## 🧪 Exemplo de Uso

- A tela inicial exibe um botão de login e imagem de fundo personalizada.
- Ao logar, o usuário é redirecionado para uma lista de contas.
- O botão flutuante permite adicionar novas contas.
- As contas são armazenadas e lidas de um Gist remoto do GitHub.

---

## 🖼️ Imagens Recomendadas

- `assets/images/banner.png`
- `assets/images/stars.png`
- `assets/images/logo.png`

Certifique-se de incluir essas imagens no `pubspec.yaml`.

---

## 📄 Licença

Projeto sob a licença MIT.

---

## 👤 Autor

Desenvolvido por Victor Vaz  
🔗 [https://victorvaz.dev](https://victorvaz.dev)
