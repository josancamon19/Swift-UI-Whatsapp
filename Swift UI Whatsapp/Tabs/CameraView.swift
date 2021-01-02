//
//  CameraView.swift
//  Swift UI Whatsapp
//
//  Created by Joan Cabezas on 1/01/21.
//

import SwiftUI

struct CaptureImageView {
  
  @Binding var isShown: Bool
  @Binding var image: Image?
  
  func makeCoordinator() -> Coordinator {
    return Coordinator(isShown: $isShown, image: $image)
  }
}

extension CaptureImageView: UIViewControllerRepresentable {
  func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureImageView>) -> UIImagePickerController {
    let picker = UIImagePickerController()
    picker.delegate = context.coordinator
    /// Default is images gallery. Un-comment the next line of code if you would like to test camera
//    picker.sourceType = .camera
    return picker
  }
  
  func updateUIViewController(_ uiViewController: UIImagePickerController,
                              context: UIViewControllerRepresentableContext<CaptureImageView>) {
    
  }
}

struct CameraView: View {
    @State var image: Image? = nil
    @State var showCaptureImageView: Bool = true
    
    var body: some View {
        VStack {
            /// All the related code to the camera stuff, was taken from https://www.iosapptemplates.com/blog/swiftui/photo-camera-swiftui @mrcflorian
            CaptureImageView(isShown: $showCaptureImageView, image: $image)
        }.tabItem {
            Image(systemName: "ipodshuffle.gen4")
            Text("Camera")
            
        }
        
    }
}
