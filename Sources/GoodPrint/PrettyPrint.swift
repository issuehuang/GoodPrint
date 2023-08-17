//
//  PrettyPrint.swift
//  GoodPrint
//
//  Created by Victor on 2023/8/17.
//

import Foundation
extension String {
   public func Pprint(){
        print("PpPrint_world")
    }
    public func filterZhuyin(input: String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: "\\p{Bopomofo}", options: [])
            let matches = regex.matches(in: input, options: [], range: NSRange(input.startIndex..., in: input))
            return matches.map { String(input[Range($0.range, in: input)!]) }
        } catch {
            print("正規表示式錯誤: \(error)")
            return []
        }
    }
}
