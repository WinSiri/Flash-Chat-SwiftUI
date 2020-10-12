//
//  GhostTypewriterView.swift
//  Flash Chat SwiftUI
//
//  Created by Kwin Sirikwin on 10/10/20.
//

import SwiftUI
import GhostTypewriter

struct TypeWriterText: UIViewRepresentable {
    private var labelText: String
    private var labelFont: UIFont
    private var labelAlignment: NSTextAlignment
    private var labelColor: UIColor
    
    init(_ text: String) {
        self.labelText = text
        self.labelFont = .preferredFont(forTextStyle: .body)
        self.labelAlignment = .left
        self.labelColor = .label
    }
    
    func makeUIView(context: Context) -> TypewriterLabel {
        let label = TypewriterLabel()
        label.text = labelText
        label.textAlignment = labelAlignment
        label.font = labelFont
        label.textColor = labelColor
        
        return label
    }
    
    func updateUIView(_ uiView: TypewriterLabel, context: Context) {
        uiView.startTypewritingAnimation()
    }
}

extension TypeWriterText {
    func font(_ newFont: UIFont) -> Self {
        var copy = self
        copy.labelFont = newFont
        return copy
    }
    
    func alignment(_ newAlignment: NSTextAlignment) -> Self {
        var copy = self
        copy.labelAlignment = newAlignment
        return copy
    }
    
    func foregroundColor(_ newColour: UIColor) -> Self {
        var copy = self
        copy.labelColor = newColour
        return copy
    }
}



struct GhostTypewriterView_Previews: PreviewProvider {
    static var previews: some View {
        // GhostTypewriterView("Preview ABCDEFG", font: .preferredFont(forTextStyle: .largeTitle), alignment: .center)
        TypeWriterText("Preview ABCDEFG")
            .font(.preferredFont(forTextStyle: .largeTitle))
            .alignment(.center)
            .foregroundColor(.systemTeal)
    }
}
