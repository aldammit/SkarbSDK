//
//  UserDefaultsService.swift
//  SkarbSDKExample
//
//  Created by Bitlica Inc. on 1/22/20.
//  Copyright © 2020 Bitlica Inc. All rights reserved.
//

import Foundation

class SKUserDefaultsService {
  enum SKKey {
    case broker
    case test
    case productId
    case price
    case currency
    case requestTypeToSync
    case fetchAllProductsAndSync
    case purchaseSentBySwizzling
    case installedDateISO8601
    case skRequestType(String)
    case clientId
    case env
    case deviceId
    
    var keyName: String {
      switch self {
        case .broker:
          return "sk_broker_key"
        case .test:
          return "sk_test_key"
        case .productId:
          return "sk_product_id"
        case .price:
          return "sk_price_key"
        case .currency:
          return "sk_currency_key"
        case .requestTypeToSync:
          return "sk_request_to_sync"
        case .fetchAllProductsAndSync:
          return "sk_fetch_all_products_and_sync"
        case .purchaseSentBySwizzling:
          return "sk_purchase_sent_by_swizzling"
        case .installedDateISO8601:
          return "sk_installed_date_ISO8601"
        case .skRequestType(let name):
          return name
        case .clientId:
          return "sk_client_id"
        case .env:
          return "sk_environment"
        case .deviceId:
          return "sk_device_id"
      }
    }
  }
  
  private let userDefaults: UserDefaults
  init() {
    self.userDefaults = UserDefaults.standard
  }
  
  func removeValue(forKey key: SKKey) {
    self.userDefaults.set(nil, forKey: key.keyName)
  }
  
  func setBool(_ value: Bool, forKey key: SKKey) {
    self.userDefaults.set(value, forKey: key.keyName)
  }
  
  func setInt(_ value: Int, forKey key: SKKey) {
    self.userDefaults.set(value, forKey: key.keyName)
  }
  
  func setJSON(_ value: [String: Any], forKey key: SKKey) {
    self.userDefaults.setValue(value, forKey: key.keyName)
  }
  
  func setString(_ value: String, forKey key: SKKey) {
    self.userDefaults.set(value, forKey: key.keyName)
  }
  
  func setFloat(_ value: Float, forKey key: SKKey) {
    self.userDefaults.set(value, forKey: key.keyName)
  }
  
  func setData(_ value: Data, forKey key: SKKey) {
    self.userDefaults.set(value, forKey: key.keyName)
  }
  
  func bool(forKey key: SKKey) -> Bool {
    return self.userDefaults.bool(forKey: key.keyName)
  }
  
  func int(forKey key: SKKey) -> Int {
    return self.userDefaults.integer(forKey: key.keyName)
  }
  
  func json(forKey key: SKKey) -> [String: Any]? {
    return self.userDefaults.object(forKey: key.keyName) as? [String: Any]
  }
  
  func string(forKey key: SKKey) -> String? {
    return self.userDefaults.object(forKey: key.keyName) as? String
  }
  
  func float(forKey key: SKKey) -> Float? {
    return self.userDefaults.object(forKey: key.keyName) as? Float
  }
  
  func data(forKey key: SKKey) -> Data? {
    return self.userDefaults.object(forKey: key.keyName) as? Data
  }
}