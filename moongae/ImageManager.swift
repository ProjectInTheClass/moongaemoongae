//
//  ImageManager.swift
//  moongae
//
//  Created by Abraham Park on 8/2/18.
//  Copyright © 2018 swuad_14. All rights reserved.
//
import UIKit
import Foundation

/**
 이미지를 관리해준다.
 */

let managerImage = ImageManager()

class ImageManager {
    /**
     이미지를 받아서 약속된 로컬 공간에 저장해준다.
     반환값 : 파일명
     저장은 jpg가 기본.
     */
    func saveImageToDocument(sourceImage:UIImage) -> String {
        let fileName = Date().description + ".jpg"
        let finalPath = NSHomeDirectory() + "/Documents/" + fileName // 일단 확장자 빼고 해보기.
        
        let jpg = UIImageJPEGRepresentation(sourceImage, 0.7)!
        let urlPath = URL(fileURLWithPath: finalPath)
        
        do {
            try jpg.write(to: urlPath)
        } catch {}
        
        return fileName
    }
    /**
     이미지를 알아서 똑똑하게 불러온다.
     */
    func loadImage(name:String) -> UIImage? {
        if let image = UIImage(named: name) {
            return image
        }
        let finalPath = NSHomeDirectory() + "/Documents/" + name // 일단 확장자 빼고 해보기.
        
        if let image = UIImage(contentsOfFile: finalPath) {
            return image
        }
        return nil
    }
}
