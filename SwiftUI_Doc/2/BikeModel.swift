//
//  BikeModel.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/24.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import Foundation

struct Bike:Identifiable {
    let id: String = UUID().uuidString
    var maker: String
    var bikeName: String
    var imageName: String
    var type: String
    var description: String
}

let bikes:[Bike] = [
    Bike(maker: "HONDA",
         bikeName: "CB750Four",
         imageName: "HONDA",
         type: "naked",
         description: "型式名CB750。1969年にCBシリーズのフラグシップモデル的存在として発売された。\n量産オートバイで世界初の200km/hを超えたオートバイである。\n日本国内のみならず輸出先でも高評価を得て、国内他メーカーも追随し社会現象ともなったいわゆるナナハンブームを巻き起こした\nほか、日本国内メーカーの国内仕様で排気量上限は750㏄までとするメーカー自主規制を作る元となったモデルでもある。\nまた輸出では、1ドル=360円固定相場の時代であったことから同社に莫大な利益をもたらし、2輪車のみならず4輪車の生産にも弾みをつけた。\nなお車名に付帯するペットネームのドリームは同社が当時の排気量250㏄クラスから上級モデルに使用していたシリーズ商標で創業社長である本田宗一郎の『夢=dream』からの引用である"),
    
    Bike(maker: "KAWASAKI",
         bikeName: "Z1",
         imageName: "KAWASAKI",
         type: "Naked",
         description: "カワサキ・Z1は、1972年に川崎重工業が欧州及び北米市場向けに製造販売した輸出専用オートバイの型式名である。\n正式名称であるカワサキ・900Super4よりも、型式名「Z1」の呼称が広く認知されているため、本稿では、「Z1」を標記として用いる。\nなお、後継機種であるZ900/KZ900も併せて掲載する。いわゆる「Z1」の系譜は、1972年から1976年にかけて製造販売していた。"),
    
    Bike(maker: "YAMAHA",
         bikeName: "YZF-R6",
         imageName: "YAMAHA",
         type: "SuperSports",
         description: "YZF-R6（ワイゼットエフアールシックス）は、ヤマハ発動機が製造発売している輸出市場（主に欧州）向け4ストローク600ccのオートバイ（大型自動二輪車）である。"),
    
    Bike(maker: "SUZUKI",
         bikeName: "KATANA",
         imageName: "SUZUKI",
         type: "Naked",
         description: "研ぎ澄まされた、特徴的なスタイル。\n切れ味鋭い、1000cm3クラスが持つエキサイティングな走り。\n独特な美しさと、強靭かつしなやかな走行フィーリングをあわせ持つ。\n上質な職人技により鍛錬を重ねた刀のように、他にはない個性的かつ前衛的なデザインと最新技術をあわせ持つ「KATANA」が誕生。"),
    
    Bike(maker: "Harley davidson",
         bikeName: "Sportster883",
         imageName: "883",
         type: "American",
         description: "1957年に初代を発売して以降、スポーティーな走りに重点を置いている。ハーレーラインナップの中ではスポーツスターファミリーと呼ばれている。"),
    
    Bike(maker: "BMW",
         bikeName: "R",
         imageName: "BMW",
         type: "CafeRacer",
         description: "1923年にBMWが造った初のオートバイである「R32」から現在まで続く息の長いシリーズである。\n途中で各部を変更されながら生産されてきたため、非常に多数のバリエーションが存在する。\nエンジンは空冷水平対向2気筒エンジン（フラットツイン）、駆動伝達はシャフトドライブが基本である。\nこのエンジンは、車体の左右にシリンダーが突き出すという、オートバイとしては特異な外観が特徴である。\n2010年からはシリンダーヘッドがDOHC化されたものが一部モデルに搭載されている。過去には単気筒モデルも存在した。"),
    Bike(maker: "HONDA",
         bikeName: "CB750Four",
         imageName: "HONDA",
         type: "naked",
         description: "型式名CB750。1969年にCBシリーズのフラグシップモデル的存在として発売された。\n量産オートバイで世界初の200km/hを超えたオートバイである。\n日本国内のみならず輸出先でも高評価を得て、国内他メーカーも追随し社会現象ともなったいわゆるナナハンブームを巻き起こした\nほか、日本国内メーカーの国内仕様で排気量上限は750㏄までとするメーカー自主規制を作る元となったモデルでもある。\nまた輸出では、1ドル=360円固定相場の時代であったことから同社に莫大な利益をもたらし、2輪車のみならず4輪車の生産にも弾みをつけた。\nなお車名に付帯するペットネームのドリームは同社が当時の排気量250㏄クラスから上級モデルに使用していたシリーズ商標で創業社長である本田宗一郎の『夢=dream』からの引用である"),
    
    Bike(maker: "KAWASAKI",
         bikeName: "Z1",
         imageName: "KAWASAKI",
         type: "Naked",
         description: "カワサキ・Z1は、1972年に川崎重工業が欧州及び北米市場向けに製造販売した輸出専用オートバイの型式名である。\n正式名称であるカワサキ・900Super4よりも、型式名「Z1」の呼称が広く認知されているため、本稿では、「Z1」を標記として用いる。\nなお、後継機種であるZ900/KZ900も併せて掲載する。いわゆる「Z1」の系譜は、1972年から1976年にかけて製造販売していた。"),
    
    Bike(maker: "YAMAHA",
         bikeName: "YZF-R6",
         imageName: "YAMAHA",
         type: "SuperSports",
         description: "YZF-R6（ワイゼットエフアールシックス）は、ヤマハ発動機が製造発売している輸出市場（主に欧州）向け4ストローク600ccのオートバイ（大型自動二輪車）である。"),
    
    Bike(maker: "SUZUKI",
         bikeName: "KATANA",
         imageName: "SUZUKI",
         type: "Naked",
         description: "研ぎ澄まされた、特徴的なスタイル。\n切れ味鋭い、1000cm3クラスが持つエキサイティングな走り。\n独特な美しさと、強靭かつしなやかな走行フィーリングをあわせ持つ。\n上質な職人技により鍛錬を重ねた刀のように、他にはない個性的かつ前衛的なデザインと最新技術をあわせ持つ「KATANA」が誕生。"),
    
    Bike(maker: "Harley davidson",
         bikeName: "Sportster883",
         imageName: "883",
         type: "American",
         description: "1957年に初代を発売して以降、スポーティーな走りに重点を置いている。ハーレーラインナップの中ではスポーツスターファミリーと呼ばれている。"),
    
    Bike(maker: "BMW",
         bikeName: "R",
         imageName: "BMW",
         type: "CafeRacer",
         description: "1923年にBMWが造った初のオートバイである「R32」から現在まで続く息の長いシリーズである。\n途中で各部を変更されながら生産されてきたため、非常に多数のバリエーションが存在する。\nエンジンは空冷水平対向2気筒エンジン（フラットツイン）、駆動伝達はシャフトドライブが基本である。\nこのエンジンは、車体の左右にシリンダーが突き出すという、オートバイとしては特異な外観が特徴である。\n2010年からはシリンダーヘッドがDOHC化されたものが一部モデルに搭載されている。過去には単気筒モデルも存在した。"),
    Bike(maker: "HONDA",
         bikeName: "CB750Four",
         imageName: "HONDA",
         type: "naked",
         description: "型式名CB750。1969年にCBシリーズのフラグシップモデル的存在として発売された。\n量産オートバイで世界初の200km/hを超えたオートバイである。\n日本国内のみならず輸出先でも高評価を得て、国内他メーカーも追随し社会現象ともなったいわゆるナナハンブームを巻き起こした\nほか、日本国内メーカーの国内仕様で排気量上限は750㏄までとするメーカー自主規制を作る元となったモデルでもある。\nまた輸出では、1ドル=360円固定相場の時代であったことから同社に莫大な利益をもたらし、2輪車のみならず4輪車の生産にも弾みをつけた。\nなお車名に付帯するペットネームのドリームは同社が当時の排気量250㏄クラスから上級モデルに使用していたシリーズ商標で創業社長である本田宗一郎の『夢=dream』からの引用である"),
    
    Bike(maker: "KAWASAKI",
         bikeName: "Z1",
         imageName: "KAWASAKI",
         type: "Naked",
         description: "カワサキ・Z1は、1972年に川崎重工業が欧州及び北米市場向けに製造販売した輸出専用オートバイの型式名である。\n正式名称であるカワサキ・900Super4よりも、型式名「Z1」の呼称が広く認知されているため、本稿では、「Z1」を標記として用いる。\nなお、後継機種であるZ900/KZ900も併せて掲載する。いわゆる「Z1」の系譜は、1972年から1976年にかけて製造販売していた。"),
    
    Bike(maker: "YAMAHA",
         bikeName: "YZF-R6",
         imageName: "YAMAHA",
         type: "SuperSports",
         description: "YZF-R6（ワイゼットエフアールシックス）は、ヤマハ発動機が製造発売している輸出市場（主に欧州）向け4ストローク600ccのオートバイ（大型自動二輪車）である。"),
    
    Bike(maker: "SUZUKI",
         bikeName: "KATANA",
         imageName: "SUZUKI",
         type: "Naked",
         description: "研ぎ澄まされた、特徴的なスタイル。\n切れ味鋭い、1000cm3クラスが持つエキサイティングな走り。\n独特な美しさと、強靭かつしなやかな走行フィーリングをあわせ持つ。\n上質な職人技により鍛錬を重ねた刀のように、他にはない個性的かつ前衛的なデザインと最新技術をあわせ持つ「KATANA」が誕生。"),
    
    Bike(maker: "Harley davidson",
         bikeName: "Sportster883",
         imageName: "883",
         type: "American",
         description: "1957年に初代を発売して以降、スポーティーな走りに重点を置いている。ハーレーラインナップの中ではスポーツスターファミリーと呼ばれている。"),
    
    Bike(maker: "BMW",
         bikeName: "R",
         imageName: "BMW",
         type: "CafeRacer",
         description: "1923年にBMWが造った初のオートバイである「R32」から現在まで続く息の長いシリーズである。\n途中で各部を変更されながら生産されてきたため、非常に多数のバリエーションが存在する。\nエンジンは空冷水平対向2気筒エンジン（フラットツイン）、駆動伝達はシャフトドライブが基本である。\nこのエンジンは、車体の左右にシリンダーが突き出すという、オートバイとしては特異な外観が特徴である。\n2010年からはシリンダーヘッドがDOHC化されたものが一部モデルに搭載されている。過去には単気筒モデルも存在した。")
]
