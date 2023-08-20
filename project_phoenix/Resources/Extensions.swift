//
//  Extensions.swift
//  project_phoenix
//
//  Created by Erkin Gönültaş on 3.08.2023.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
