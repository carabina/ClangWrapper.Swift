//
//  Cursor+Equatable.swift
//  ClangWrapper
//
//  Created by Hoon H. on 2015/01/21.
//  Copyright (c) 2015 Eonil. All rights reserved.
//

import Foundation

extension Cursor: Equatable {
}

public func == (left:Cursor, right:Cursor) -> Bool {
	let	r	=	clang_equalCursors(left.raw, right.raw)
	return	r != 0
}
public func != (left:Cursor, right:Cursor) -> Bool {
	return !(left == right)
}









extension Cursor: Hashable {
	public var hashValue:Int {
		get {
			return	Int(bitPattern: UInt(clang_hashCursor(raw)))
		}
	}
}











