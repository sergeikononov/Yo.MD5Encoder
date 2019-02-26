//
//  MD5Encoder.swift
//  Yo.MD5Encoder
//
//  Created by Sergei on 26/02/2019.
//  Copyright © 2019 Yo. All rights reserved.
//

import Foundation



class MD5Encoder {
    
    var a0: UInt32 = 0x67452301 // A
    var b0: UInt32 = 0xefcdab89 // B
    var c0: UInt32 = 0x98badcfe // C
    var d0: UInt32 = 0x10325476 // D
    
    private func F(_ b: UInt32, _ c: UInt32, _ d: UInt32) -> UInt32 {
        return (b & c) | ((~b) & d)
    }
    
    private func G(_ b: UInt32, _ c: UInt32, _ d: UInt32) -> UInt32 {
        return (b & d) | (c & (~d))
    }
    
    private func H(_ b: UInt32, _ c: UInt32, _ d: UInt32) -> UInt32 {
        return b ^ c ^ d
    }
    
    private func I(_ b: UInt32, _ c: UInt32, _ d: UInt32) -> UInt32 {
        return c ^ (b | (~d))
    }
    
    private func rotateLeft(_ x: UInt32, by: UInt32) -> UInt32 {
        return ((x << by) & 0xFFFFFFFF) | (x >> (32 - by))
    }
    
}
