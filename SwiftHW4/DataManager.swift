//
//  DataManager.swift
//  SwiftHW4
//
//  Created by Andrey Markov on 2020-12-22.
//

class DataManager{
    static let shared = DataManager()
    
    private init() {}
    
    let ids = [
        1,2,3,4,5,6
    ]
    let names = [
        "Anton","Nikolay","Samuel","Alexandr","Roman","Jordan"
    ]
    let surnames = [
        "Miranchuk","Rasskazov","Gigout","Kokorin","Zobnin","Larsson"
    ]
    let phones = [
        "89154563418","89256578900","89169785432","89167777777","89346875488","89103546879"
    ]
    let emails = [
        "amiranchuk@mail.ru","rasskaz98@yandex.ru","samuregby@gmail.com","fartumastiauekokora@yandex.ru","zobaroman@mail.ru","larssonjr@gmail.com"
    ]
}
