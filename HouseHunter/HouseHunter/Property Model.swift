//
//  Property Model.swift
//  HouseHunter
//
//  Created by Robert Hedin on 2/14/16.
//  Copyright © 2016 Catalyst Software, LLC. All rights reserved.
//

import Foundation
import CoreLocation



/// Indicates the method of acquisition.
enum AcquisitionMethod {
    /// Indicates that the property may be rented.
    case Rental
    
    /// Indicates that the property may be purchased.
    case Purchase
    
    /// Indicates that the property is for sale, but may be rented with a
    /// portion of the rental price applied as a down payment in the future.
    case LeaseWithOptionToBuy
}



enum PropertyType {
    case Apartment
    case Condominium
    case Duplex
    case MultiFamily
    case SingleFamily
    case Townhouse
    case Trailer
}



enum FeeType {
    case CleaningDeposit
    case GarageFee
    case PetDeposit
    case PetFee
    case SecurityDeposit
    case StorageFee
}



enum Frequency {
    case OneTime
    case Daily
    case Weekly
    case Monthly
    case Quarterly
    case SemiAnnually
    case Annually
}



class Fee {
    var type: FeeType
    var amount: Double
    var frequency: Frequency
    var refundable: Bool
    
    init() {
        type = .CleaningDeposit
        amount = 0.0
        frequency = .OneTime
        refundable = false
    }
}



enum Utility {
    case Electricity
    case Gas
    case Internet
    case Phone
    case Sewer
    case Television
    case Trash
    case Water
}



class Property {
    var acquisitionMethod: AcquisitionMethod
    var type: PropertyType
    var location: CLLocationCoordinate2D
    var price: Double
    var fees: [Fee]
    var utilitiesIncluded: [Utility]
    var numberOfBedrooms: Int
    var numberOfFullBathrooms: Int
    var numberOfHalfBathrooms: Int
    var size: Double
    var lotSize: Double?
    var builtIn: Int?
    
    
    init() {
        acquisitionMethod = .Purchase
        type = .SingleFamily
        location = CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0 )
        price = 0.0
        fees = []
        utilitiesIncluded = []
        numberOfBedrooms = 0
        numberOfFullBathrooms = 0
        numberOfHalfBathrooms = 0
        size = 0.0
        lotSize = nil
        builtIn = nil
    }
}

