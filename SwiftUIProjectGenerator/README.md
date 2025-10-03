# SwiftUI Project Generator 🚀

A Swift CLI tool that generates SwiftUI starter projects following the **C0D1NG** community guidelines. Create professional, well-structured SwiftUI projects with just one command!

## ✨ Features

- **Quick Project Setup**: Generate a complete SwiftUI project structure instantly
- **C0D1NG Standards**: Follows the community guidelines and best practices
- **Ready to Use**: Generated projects are immediately buildable in Xcode
- **Clean Structure**: Organized directory layout with proper asset management
- **Community Integration**: Built-in links to C0D1NG resources and community

## 🛠 Installation

### Using Swift Package Manager

1. Clone this repository:

```bash
git clone https://github.com/C0D1NG/SwiftUI.git
cd SwiftUI/SwiftUIProjectGenerator
```

2. Build the executable:

```bash
swift build -c release
```

3. Install globally (optional):

```bash
./install.sh
```

Or copy manually to your PATH:

```bash
cp .build/release/swiftui-gen /usr/local/bin/
```

### Manual Installation

You can also run the tool directly:

```bash
swift run swiftui-gen MyProject
```

## 🚀 Usage

### Basic Usage

```bash
# Generate a basic SwiftUI project
swiftui-gen MyAwesomeApp

# Get help
swiftui-gen --help
```

### Command Line Options

```
USAGE:
    swiftui-gen <project-name>

ARGUMENTS:
    <project-name>          The name of your SwiftUI project

OPTIONS:
    -h, --help             Show this help message

EXAMPLES:
    swiftui-gen MyAwesomeApp
    swiftui-gen Calculator
    swiftui-gen WeatherApp
```

## 📁 Generated Project Structure

Each generated project follows this organized structure:

```
YourProjectName/
├── YourProjectName.xcodeproj      # Xcode project file
├── YourProjectName/               # Source code
│   ├── App/                       # App entry point
│   │   ├── YourProjectNameApp.swift
│   │   └── ContentView.swift
│   └── Resources/                 # Assets and resources
│       └── Assets.xcassets/
│           ├── Contents.json
│           └── AppIcon.appiconset/
└── README.md                      # Project documentation
```

## 🎨 What You Get

### Ready-to-Run SwiftUI App

- Complete app structure with `@main` entry point
- Welcome screen with Swift logo and branding
- Proper SwiftUI architecture setup
- Asset catalog with app icon placeholder

### Professional Documentation

- Comprehensive README with setup instructions
- Links to C0D1NG community resources
- Clear next steps for development
- Community guidelines and standards

### Development Ready

- Immediate buildable state in Xcode
- Proper iOS app configuration
- Asset management setup
- Follow iOS development best practices

## 🎯 Example Generation

```bash
$ swiftui-gen Calculator
🚀 Creating SwiftUI project: Calculator
✅ Project created successfully!
📁 Location: /Users/yourname/Calculator
🚀 Next steps:
   1. cd Calculator
   2. open Calculator.xcodeproj
   3. Build and run your project!
```

Generated `ContentView.swift`:

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .font(.system(size: 80))
                .foregroundColor(.blue)

            Text("Welcome to SwiftUI!")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Your Calculator app is ready!")
                .font(.body)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
```

## � Quick Start Workflow

1. **Generate your project:**

   ```bash
   swiftui-gen MyAwesomeApp
   ```

2. **Open in Xcode:**

   ```bash
   cd MyAwesomeApp
   open MyAwesomeApp.xcodeproj
   ```

3. **Build and run** (⌘+R)

4. **Start coding** your SwiftUI masterpiece!

## 🤝 Contributing to the Generator

We welcome contributions to improve the SwiftUI Project Generator!

### Development Setup

1. Fork and clone the repository
2. Make your changes to the generator
3. Test with different project names:

```bash
swift run swiftui-gen TestProject1
swift run swiftui-gen TestProject2
```

4. Submit a pull request

### Future Enhancements

This is a simplified version. Planned improvements include:

- Multiple project templates (Calculator, Todo, Weather, etc.)
- Difficulty levels (Beginner, Intermediate, Advanced)
- Custom iOS version targeting
- Unit test generation
- Advanced project structures
- Additional SwiftUI patterns and examples

## 📄 License

This project is part of the **C0D1NG** open source initiative and is available under the MIT License.

## 🔗 Connect

- **Community**: [Telegram](https://t.me/C0D1NG)
- **Organization**: [C0D1NG on GitHub](https://github.com/C0D1NG)
- **Website**: [c0d1ng.github.io](https://c0d1ng.github.io/)
- **SwiftUI Projects**: [SwiftUI Repository](https://github.com/C0D1NG/SwiftUI)

---

<div align="center">

**Made with ❤️ and Swift**

⭐ **Star this repository if it helped you create amazing SwiftUI projects!**

**Part of the [C0D1NG](https://github.com/C0D1NG) open source community**

</div>
