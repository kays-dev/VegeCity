//
//  WrappedHStack.swift
//  Vegecity
//
//  Created by Apprenant174 on 13/06/2026.
//

import SwiftUI

/// A stacked view where overflow items on the trailing view will wrap.
public struct WrappedHStack: Layout {
    /// The horizontal spacing of the items in the subview.
    private let horizontalSpacing: CGFloat
    
    /// The vertical spacing of the items in the subview.
    private let verticalSpacing: CGFloat

    /// Creates and returns and instance of `WrappedHStack`.
    ///
    /// - Parameters:
    ///     - horizontalSpacing: The horizontal spacing of sub views.
    ///     - verticalSpacing: The vertical spacing of sub views.
    public init(
        horizontalSpacing: CGFloat = 6,
        verticalSpacing: CGFloat = 5
    ) {
        self.horizontalSpacing = horizontalSpacing
        self.verticalSpacing = verticalSpacing
    }
    
    public func sizeThatFits(
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) -> CGSize {
        var width = 0.0
        var height = 0.0
        var rowHeight = 0.0
        var rowWidth = 0.0
        let maxWidth = proposal.width ?? .infinity
        
        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)
            
            if rowWidth + size.width > maxWidth {
                width = max(rowWidth, maxWidth)
                height += rowHeight + verticalSpacing
                rowWidth = 0
                rowHeight = 0
            }
            
            rowWidth += size.width + horizontalSpacing
            rowHeight = max(rowHeight, size.height)
        }
        
        width = max(width, rowWidth)
        height += rowHeight
        
        return CGSize(width: width, height: height)
    }

    public func placeSubviews(
        in bounds: CGRect,
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) {
        var currentX = bounds.minX
        var currentY = bounds.minY
        let maxWidth = bounds.maxX
        
        for subview in subviews {
            let size = subview.dimensions(in: .unspecified)
            
            if currentX + size.width > maxWidth {
                currentY += size.height + verticalSpacing
                currentX = bounds.minX
            }
            
            subview.place(
                at: CGPoint(x: currentX, y: currentY),
                proposal: .unspecified
            )
            
            currentX += size.width + horizontalSpacing
        }
    }
}

