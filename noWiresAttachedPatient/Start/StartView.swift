//
//  StartView.swift
//  noWiresAttachedPatient
//
//
//

import SwiftUI
import Navigattie

struct StartedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 316)
            .frame(height: 72)
            .foregroundColor(Color("ButtonColor1"))
            .font(.system(size: 22))
            .fontWeight(.semibold)
            .background(Color.white)
            .cornerRadius(20)
            .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 1)
            )
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

struct LogInButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .font(.system(size: 16))
            .fontWeight(.semibold)
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}


struct StartView: NavigatableView {

    @State private var startedAction: Int? = 0
    @State private var logInAction: Int? = 0
    
    var body: some View {

            VStack {
                
                LogoImage()
                
                ZStack(alignment: .custom) {
                    
                    FooterImage()
                    
                    VStack(alignment: .center) {
                        
                        Button("Get Started") {
                                SignUpView().push(with: .horizontalSlide)
                        }
                        .buttonStyle(StartedButtonStyle())
                        .alignmentGuide(VerticalAlignment.custom)
                        { d in d[.top] }
                        
                        Button("Already Have an Account? Log In") {
                            LogInView().push(with: .horizontalSlide)
                        }
                        .buttonStyle(LogInButtonStyle())
                    }
                }
                
                
            }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("AppForegroundColor1")).ignoresSafeArea(.all)
    }
}


extension HorizontalAlignment {
    enum Custom: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[HorizontalAlignment.center]
        }
    }
    static let custom = HorizontalAlignment(Custom.self)
}

extension VerticalAlignment {
    enum Custom: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[VerticalAlignment.center]
        }
    }
    static let custom = VerticalAlignment(Custom.self)
}

extension Alignment {
    static let custom = Alignment(horizontal: .custom,
                                  vertical: .custom)
}

#Preview {
    StartView()
}

