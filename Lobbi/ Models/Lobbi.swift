//
//  LobbiModel.swift
//  Lobbi
//
//  Created by Ebu Bekir Celik on 17.10.21.
//

import UIKit

public struct Lobbi {
    var uuid: UUID
    var name: String
    var status: LobbiStatus
}

public enum LobbiStatus {
    case created
    case searching
    case aborted
}
