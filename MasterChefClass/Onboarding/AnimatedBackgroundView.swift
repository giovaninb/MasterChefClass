//
//  AnimatedBackgroundView.swift
//  MasterChefClass
//
//  Created by Rodrigo de Anhaia on 31/03/21.
//

import SwiftUI

struct AnimatedBackgroundView: View {
    @Binding var percent: Float
    
    var body: some View {
        VStack {
            WaveView(percent: Int(self.percent))

        }
    }
}

struct AnimatedBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedBackgroundView(percent: Binding.constant(50.0))
        
    }
}


struct Wave: Shape {
    
    var offset: Angle
    var percent: Double
    
    var animatableData: Double {
        get { offset.degrees }
        set { offset = Angle(degrees: newValue) }
    }
    
    func path(in rect: CGRect) -> Path {
        var p = Path()
        
        // empirically determined values for wave to be seen
        // at 0 and 100 percent
        let lowfudge = 0.2
        let highfudge = 0.98
        
        let newpercent = lowfudge + (highfudge - lowfudge) * percent
        let waveHeight = 0.045 * rect.height
        let yoffset = CGFloat(1 - newpercent) * (rect.height - 4 * waveHeight) + 2 * waveHeight
        let startAngle = offset
        let endAngle = offset + Angle(degrees: 360)
        
        p.move(to: CGPoint(x: 0, y: yoffset + waveHeight * CGFloat(sin(offset.radians))))
        
        for angle in stride(from: startAngle.degrees, through: endAngle.degrees, by: 5) {
            let x = CGFloat((angle - startAngle.degrees) / 360) * rect.width
            p.addLine(to: CGPoint(x: x, y: yoffset + waveHeight * CGFloat(sin(Angle(degrees: angle).radians))))
        }
        
        p.addLine(to: CGPoint(x: rect.width, y: rect.height))
        p.addLine(to: CGPoint(x: 0, y: rect.height))
        p.closeSubpath()
        
        return p
    }
}

struct WaveView: View {
    
    @State private var waveOffset = Angle(degrees: 0)
    let percent: Int
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Wave(offset: Angle(degrees: self.waveOffset.degrees), percent: Double(percent)/400)
                    .fill(Color(#colorLiteral(red: 0.8626788259, green: 0.8627825379, blue: 0.8626434207, alpha: 1)))
                    .clipShape(Rectangle().scale(0.9998))
                    .ignoresSafeArea(edges: .bottom)
            }
        }
        .aspectRatio(1, contentMode: .fill)
        .onAppear {
            withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                self.waveOffset = Angle(degrees: 360)
            }
        }
    }
}
