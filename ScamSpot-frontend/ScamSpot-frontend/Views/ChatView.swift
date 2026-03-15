
import SwiftUI

struct ChatView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack{
            Color(AppColors.background)
                .ignoresSafeArea()
            
            VStack (spacing: 5) {
                Divider()
                    .background(Color.black)
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 6) {
                        ZStack{
                            Image("darkblue-button")
                            HStack{
                                Image(systemName: "chevron.left")
                                    .foregroundColor(Color.white)
                                Text("Leave case")
                                    .foregroundStyle(Color.white)
                                    .font(Font.headline.bold())
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ChatView()
}
