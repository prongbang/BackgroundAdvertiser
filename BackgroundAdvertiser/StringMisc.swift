//
//  StringMisc.swift
//  BackgroundAdvertiser
//
//  Created by Endtry on 13/12/2563 BE.
//  Copyright © 2563 BE davidgyoungtech. All rights reserved.
//

import Foundation

public class StringMisc {

   // MARK: - Constants

   // This is used by the byteArrayToHexString() method
   private static let CHexLookup : [Character] =
      [ "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F" ]


   // Mark: - Public methods

   /// Method to convert a byte array into a string containing hex characters, without any
   /// additional formatting.
   public static func byteArrayToHexString(_ byteArray : [UInt8]) -> String {

      var stringToReturn = ""

      for oneByte in byteArray {
         let asInt = Int(oneByte)
         stringToReturn.append(StringMisc.CHexLookup[asInt >> 4])
         stringToReturn.append(StringMisc.CHexLookup[asInt & 0x0f])
      }
      return stringToReturn
   }
}
