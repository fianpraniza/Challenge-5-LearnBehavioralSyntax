//
//  HomeView.swift
//  Challenge5
//
//  Created by Muhammad Arfian Praniza on 28/08/26.
//

import SwiftUI

enum PracticeStatus {
    case ready
    case practiceStarted
    case paused
    case finished
    
    var title: String {
        switch self {
        case .ready:
            return "Ready to start"
        case .practiceStarted:
            return "Practice Running"
        case .paused:
            return "Paused"
        case .finished:
            return "Finished"
        }
    }
    
    var buttonTitle: String {
        switch self {
        case .ready:
            return "Start Practice"
        case .practiceStarted:
            return "Pause"
        case .paused:
            return "Resume"
        case .finished:
            return "Back to Home"
        }
    }
}

struct HomeView: View {
    @State var practiceStatus: PracticeStatus = .ready /// data atau state utama
    let onStartPractice: () -> Void /// closure property untuk mengirim kabar ke rootview, () -> void dia tidak butuh input dan tidak mengembalikan output
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.07, green: 0.09, blue: 0.16),
                    Color(red: 0.12, green: 0.14, blue: 0.24)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 28) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("TIEMPO")
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .tracking(3)
                        .foregroundStyle(.white.opacity(0.7))

                    Text("Practice your talk with calm pacing.")
                        .font(.system(size: 34, weight: .bold, design: .rounded))
                        .foregroundStyle(.white)
                        .lineSpacing(4)

                    Text("Start a focused speaking session, then review your practice result after you finish.")
                        .font(.body)
                        .foregroundStyle(.white.opacity(0.68))
                        .lineSpacing(3)
                        .padding(.top, 4)
                }

                VStack(alignment: .leading, spacing: 18) {
                    HStack(spacing: 14) {
                        Image(systemName: "mic.circle.fill")
                            .font(.system(size: 42))
                            .foregroundStyle(Color.orange)

                        VStack(alignment: .leading, spacing: 4) {
                            Text("Current session")
                                .font(.caption)
                                .textCase(.uppercase)
                                .tracking(1)
                                .foregroundStyle(.white.opacity(0.55))

                            Text(practiceStatus.title)
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .foregroundStyle(.white)
                        }
                    }

                    Divider()
                        .background(.white.opacity(0.2))

                    HStack(spacing: 12) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Focus")
                                .font(.caption)
                                .foregroundStyle(.white.opacity(0.55))
                            Text("Presentation")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }

                        Spacer()

                        VStack(alignment: .trailing, spacing: 4) {
                            Text("Timer")
                                .font(.caption)
                                .foregroundStyle(.white.opacity(0.55))
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                    }
                }
                .padding(22)
                .background(.white.opacity(0.1), in: RoundedRectangle(cornerRadius: 28, style: .continuous))
                .overlay {
                    RoundedRectangle(cornerRadius: 28, style: .continuous)
                        .stroke(.white.opacity(0.14), lineWidth: 1)
                }

                VStack(spacing: 12) {
                    Button { /// block action button
//                        print("Primary button tapped. Current status:", practiceStatus)
                        /// cek status sebelum di tap dan action pada saat di tap
                        switch practiceStatus {
                        case .ready:
                            practiceStatus = .practiceStarted
                            onStartPractice() /// closure/action/sumber event to practice scren
                        case .practiceStarted:
                            practiceStatus = .paused
                        case .paused:
                            practiceStatus = .practiceStarted
                        case .finished:
                            practiceStatus = .ready
//                            elapsedSeconds = 0
                        }
                        
//                        print("New status:", practiceStatus)
                    } label: { /// block label button
                        Text(practiceStatus.buttonTitle)
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 16)
                    }
                    .buttonStyle(.plain)
                    .foregroundStyle(.black)
                    .background(Color.orange, in: RoundedRectangle(cornerRadius: 18, style: .continuous))


                    if practiceStatus == .practiceStarted || practiceStatus == .paused {
                        Button {
                            /// block condition is finished
                            practiceStatus = .finished
                        } label: {
                            Text("Stop")
                                .font(.headline)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 16)
                        }
                        .buttonStyle(.plain)
                        .foregroundStyle(.white)
                        .background(.white.opacity(0.12), in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                    }
                }

                Spacer()

                Text("Milestone 1 Home Feature Rebuild")
                    .font(.footnote)
                    .foregroundStyle(.white.opacity(0.45))
            }
            .padding(24)
        }
    }
}

#Preview {
    HomeView(onStartPractice: {})
}
