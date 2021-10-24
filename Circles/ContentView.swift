import SwiftUI

struct ContentView: View {
    
    @State private var escalado = false
    @State private var rotación = false
    @State private var movimiento = false
    
    var body: some View {
        ZStack {
            Rectangle().edgesIgnoringSafeArea(.all)
            ZStack{
                
                //MARK: - Circles step 1
                ZStack{
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.mint, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: movimiento ? -60 : 0)
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.mint, .white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: movimiento ? 60 : 0)
                }.opacity(0.6)
                
                //MARK: - Circles step 2
                ZStack{
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.mint, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: movimiento ? -60 : 0)
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.mint, .white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: movimiento ? 60 : 0)
                }.opacity(0.6)
                    .rotationEffect(.degrees(60))
                
                
                //MARK: - Circles step 3
                ZStack{
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.mint, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: movimiento ? -60 : 0)
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.mint, .white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: movimiento ? 60 : 0)
                }.opacity(0.6)
                    .rotationEffect(.degrees(120))
                
                //MARK: animations
            }.rotationEffect(.degrees(rotación ? 90 : 0))
//                .scaleEffect(escalado ? 1 : 1/4)
                .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/8), value: escalado ? 1 : 1/4)
                .onAppear {
                    movimiento.toggle()
                    rotación.toggle()
                    escalado.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
