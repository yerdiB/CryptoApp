//
//  CoinImageService.swift
//  CryptoApp
//
//  Created by Yerdaulet Ismanaliyev on 17.01.2023.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    
    private let coin: CoinModel
    
    private let fileManager = LocalFileManager.instance
    
    private let folderName = "coin_images"
    
    private let imageName: String
    
    init(coin: CoinModel){
        self.coin = coin
        self.imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage(){
        if let savedImage = fileManager.getImage(imageName: coin.id, folderName: folderName) {
            image = savedImage
            print("Retrieving image from file manager")
        }else{
            downloadCoinImage()
            print("downloading images")
        }
    }
    
    private func downloadCoinImage(){
        guard var url = URL (string: coin.image) else {return}
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({(data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: {[weak self] (returnedImage) in
                guard let self = self, let downloadedImage = returnedImage else {return}
                self.image = downloadedImage
                self.imageSubscription?.cancel()
                self.fileManager.saveImage(image: downloadedImage, imageName: self.imageName, folderName: self.folderName)
            })
        
    }
}
