import Foundation

@main
struct SwiftUIProjectGenerator {
    static func main() {
        let generator = SimpleProjectGenerator()
        generator.run()
    }
}

struct SimpleProjectGenerator {
    func run() {
        let arguments = CommandLine.arguments

        for arg in arguments {
            if arg == "--help" || arg == "-h" {
                printUsage()
                return
            }
        }

        let projectName = arguments.count > 1 ? arguments[1] : "MySwiftUIApp"

        print("🚀 Creating SwiftUI project: \(projectName)")

        do {
            try createBasicProject(name: projectName)
            print("✅ Project created successfully!")
            print("📁 Location: \(FileManager.default.currentDirectoryPath)/\(projectName)")
            print("🚀 Next steps:")
            print("   1. cd \(projectName)")
            print("   2. open \(projectName).xcodeproj")
            print("   3. Build and run your project!")
        } catch {
            print("❌ Error: \(error.localizedDescription)")
        }
    }

    func createBasicProject(name: String) throws {
        let fm = FileManager.default
        let projectPath = "\(fm.currentDirectoryPath)/\(name)"

        try fm.createDirectory(
            atPath: projectPath, withIntermediateDirectories: true, attributes: nil)
        try fm.createDirectory(
            atPath: "\(projectPath)/\(name)", withIntermediateDirectories: true, attributes: nil)
        try fm.createDirectory(
            atPath: "\(projectPath)/\(name)/App", withIntermediateDirectories: true, attributes: nil
        )
        try fm.createDirectory(
            atPath: "\(projectPath)/\(name)/Resources", withIntermediateDirectories: true,
            attributes: nil)
        try fm.createDirectory(
            atPath: "\(projectPath)/\(name)/Resources/Assets.xcassets",
            withIntermediateDirectories: true, attributes: nil)
        try fm.createDirectory(
            atPath: "\(projectPath)/\(name)/Resources/Assets.xcassets/AppIcon.appiconset",
            withIntermediateDirectories: true, attributes: nil)

        let appContent = """
            import SwiftUI

            @main
            struct \(name)App: App {
                var body: some Scene {
                    WindowGroup {
                        ContentView()
                    }
                }
            }
            """
        try appContent.write(
            toFile: "\(projectPath)/\(name)/App/\(name)App.swift", atomically: true, encoding: .utf8
        )

        let contentView = """
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
                        
                        Text("Your \(name) app is ready!")
                            .font(.body)
                            .padding()
                    }
                    .padding()
                }
            }

            #Preview {
                ContentView()
            }
            """
        try contentView.write(
            toFile: "\(projectPath)/\(name)/App/ContentView.swift", atomically: true,
            encoding: .utf8)

        let assetsContent = """
            {
              "info" : {
                "author" : "xcode",
                "version" : 1
              }
            }
            """
        try assetsContent.write(
            toFile: "\(projectPath)/\(name)/Resources/Assets.xcassets/Contents.json",
            atomically: true, encoding: .utf8)

        try fm.createDirectory(
            atPath: "\(projectPath)/\(name).xcodeproj", withIntermediateDirectories: true,
            attributes: nil)

        let projectContent = ""
        try projectContent.write(
            toFile: "\(projectPath)/\(name).xcodeproj/project.pbxproj", atomically: true,
            encoding: .utf8)

        let readmeContent = """
            # \(name)

            A SwiftUI project created with the C0D1NG SwiftUI Project Generator! 🚀

            ## Getting Started

            1. Open \(name).xcodeproj in Xcode
            2. Build and run the project
            3. Start building your amazing SwiftUI app!

            ## Features

            - Basic SwiftUI project structure
            - Ready-to-use ContentView
            - Proper asset catalog setup
            - iOS app configuration

            ## Part of C0D1NG Community

            This project was generated using the C0D1NG SwiftUI Project Generator.

            - **Community**: [Telegram](https:
            - **Organization**: [C0D1NG on GitHub](https:
            - **Website**: [c0d1ng.github.io](https:

            Happy coding! 🍎✨
            """
        try readmeContent.write(
            toFile: "\(projectPath)/README.md", atomically: true, encoding: .utf8)
    }

    func printUsage() {
        print(
            """
            SwiftUI Project Generator v1.0.0
            A Swift CLI tool to generate SwiftUI starter projects following C0D1NG guidelines

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

            This simplified version creates a basic SwiftUI project structure.
            For more advanced templates and features, check out the full version
            at https:
            """)
    }
}
