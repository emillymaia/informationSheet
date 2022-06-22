//
//  SwiftUIView.swift
//  informationSheet
//
//  Created by Emilly Maia on 22/06/22.
//

import SwiftUI
import StepperView

// swiftlint: disable colon
struct SwiftUIView: View {
    let steps = [TextView(text:"Limpeza", font: .system(size: 14, weight: .semibold)),
                 TextView(text:"Hidratação", font: .system(size: 14, weight: .semibold)),
                 TextView(text:"Proteção solar", font: .system(size: 14, weight: .semibold))]
    let indicators = [
        StepperIndicationType.custom(Image(systemName:"1.circle")
            .font(.largeTitle)
            .foregroundColor(
                Color(uiColor:
                        UIColor(red: 250/255, green: 162/255, blue: 117/255, alpha: 1)))
                .eraseToAnyView()),
        StepperIndicationType.custom(Image(systemName:"2.circle")
            .font(.largeTitle)
            .foregroundColor(
                Color(uiColor:
                        UIColor(red: 250/255, green: 162/255, blue: 117/255, alpha: 1)))
                .eraseToAnyView()),
        StepperIndicationType.custom(Image(systemName:"3.circle")
            .font(.largeTitle)
            .foregroundColor(
                Color(uiColor:
                        UIColor(red: 250/255, green: 162/255, blue: 117/255, alpha: 1)))
                .eraseToAnyView())
    ]
    let pitStopLineOptions = [
        StepperLineOptions.custom(1, Color(uiColor: UIColor(red: 250/255, green: 162/255, blue: 117/255, alpha: 1))),
        StepperLineOptions.custom(1, Color(uiColor: UIColor(red: 250/255, green: 162/255, blue: 117/255, alpha: 1))),
        StepperLineOptions.custom(1, Color(uiColor: UIColor(red: 250/255, green: 162/255, blue: 117/255, alpha: 1)))
    ]
    let pitStops = [
        TextView(text:GithubPitstops.p1).eraseToAnyView(),
        TextView(text:GithubPitstops.p2).eraseToAnyView(),
        TextView(text:GithubPitstops.p3).eraseToAnyView()
    ]
    var body: some View {
        ZStack {
            Color(uiColor: UIColor(red: 209/255, green: 221/255, blue: 219/255, alpha: 1))
            VStack {
                // swiftlint:disable line_length
                Image("sun")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                TextView(text: "Durante os dias quentes, há uma maior exposição ao sol e o nosso corpo produz mais suor, em busca da regularização da temperatura corporal. Usar muito hidratante pode obstruir os poros e causar espinhas, por isso a rotina deve ser adaptada. A oleosidade tende a aumentar.")
                    .padding()
                // swiftlint:enable line_length
                StepperView()
                    .addSteps(steps)
                    .indicators(indicators)
                    .stepIndicatorMode(StepperMode.vertical)
                    .addPitStops(pitStops)
                    .pitStopLineOptions(pitStopLineOptions)
                    .spacing(80)
//                    .foregroundColor(Color(uiColor: UIColor(red: 209/255, green: 221/255, blue: 219/255, alpha: 1)))
                    .padding(.top)
                Spacer()
            }
            .padding(.init(top: 24, leading: 1, bottom: 1, trailing: 1))
        }
        .ignoresSafeArea()
    }
    struct GithubPitstops {
        static var p1 = "Lavar o rosto 3 vezes por dia. Se no período da tarde não puder, aplicar água termal é uma boa opção."
        static var p2 = "Lavar o rosto 3 vezes por dia. Se no período da tarde não puder, aplicar água termal é uma boa opção."
        static var p3 = "Lavar o rosto 3 vezes por dia. Se no período da tarde não puder, aplicar água termal é uma boa opção."
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
