//
//  Rounded.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 04/03/23.
//

import SwiftUI

struct Rounded: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 40, height: 40))
        return Path(path.cgPath)
    }
}

struct Rounded_Previews: PreviewProvider {
    static var previews: some View {
        Rounded()
    }
}
