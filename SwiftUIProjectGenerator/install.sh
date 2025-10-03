#!/bin/bash

echo "🚀 Building SwiftUI Project Generator..."

if [[ ! -f "Package.swift" ]]; then
    echo "❌ Error: Package.swift not found. Please run this script from the SwiftUIProjectGenerator directory."
    exit 1
fi

echo "🔨 Building release version..."
swift build -c release

if [[ $? -ne 0 ]]; then
    echo "❌ Build failed. Please check the error messages above."
    exit 1
fi

echo "✅ Build successful!"

if [[ ! -f ".build/release/swiftui-gen" ]]; then
    echo "❌ Error: Executable not found at .build/release/swiftui-gen"
    exit 1
fi

echo ""
echo "Would you like to install swiftui-gen to /usr/local/bin? (y/n)"
read -r response

if [[ "$response" =~ ^[Yy]$ ]]; then
    if [[ ! -d "/usr/local/bin" ]]; then
        echo "📁 Creating /usr/local/bin directory..."
        sudo mkdir -p /usr/local/bin
    fi

    echo "📦 Installing swiftui-gen to /usr/local/bin..."
    sudo cp .build/release/swiftui-gen /usr/local/bin/

    if [[ $? -ne 0 ]]; then
        echo "❌ Installation failed. You may need to run with sudo permissions."
        exit 1
    fi

    sudo chmod +x /usr/local/bin/swiftui-gen

    echo "✅ Installation complete!"
    echo ""
    echo "🎉 SwiftUI Project Generator is now installed globally!"
    echo ""
    echo "You can now use it from anywhere:"
    echo "  swiftui-gen MyApp"
    echo "  swiftui-gen Calculator"
    echo "  swiftui-gen WeatherApp"
else
    echo "⚡ You can run the tool directly with:"
    echo "  swift run swiftui-gen MyApp"
fi

echo ""
echo "For help, run: swiftui-gen --help (or swift run swiftui-gen --help)"
echo ""
echo "Happy coding! 🍎✨"