import SwiftUI

struct ContentView: View {
    @State private var isWelcomed = false

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: isWelcomed ? "hand.wave.fill" : "swift")
                .font(.system(size: 72))
                .foregroundStyle(.orange)
                .accessibilityHidden(true)

            Text(isWelcomed ? "Welcome to iOS!" : "Hello, iOS!")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)

            Button(isWelcomed ? "Start over" : "Say hello") {
                withAnimation(.spring) {
                    isWelcomed.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            .accessibilityHint("Changes the greeting and symbol")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
