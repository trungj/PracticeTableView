//
//  User.swift
//  baitapTableView
//
//  Created by trung on 09/11/2022.
//

import Foundation

struct User {
    var ava: String
    var name: String
    var mes: String
    var phone: String
}

func fakedata() -> [User] {
    let user1 = User(ava: "ava1", name: "Trung Nguyen", mes: "Anh yeu em...", phone: "")
    let user2 = User(ava: "ava2", name: "Kim Dung", mes: "E may tao buon qua...", phone: "")
    let user3 = User(ava: "ava3", name: "Thanh Xuan", mes: "Di choi khong em...", phone: "")
    let user4 = User(ava: "ava4", name: "Chi Thanh", mes: "Di an toi khong may...", phone: "")
    let user5 = User(ava: "ava5", name: "Thuy Nguyen", mes: "Di xem phim may nhe...", phone: "ava5")
    let user6 = User(ava: "ava6", name: "Nam Tran", mes: "Cafe di anh em oi...", phone: "")
    let user7 = User(ava: "ava7", name: "Khanh Ly", mes: "Anh dang lam gi the...", phone: "")
    let user8 = User(ava: "ava8", name: "Ngoc Man", mes: "Em yeu anh...", phone: "")
    let user9 = User(ava: "ava9", name: "Lam Nguyen", mes: "E may tao buon...", phone: "")
    let user10 = User(ava: "ava10", name: "Tien Xinh", mes: "troi thu de re lam may oi...", phone: "")
    let user11 = User(ava: "ava11", name: "My Anh", mes: "Ok teo nay nha...", phone: "")
    let user12 = User(ava: "ava12", name: "To Lam", mes: "Anh dang lam gi day...", phone: "")
    
    return [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12]
}
