//
//  BrainCALCY.swift
//  CALCY-V2
//
//  Created by Mohamed El Zedy on 1/23/18.
//  Copyright © 2018 Mohamed El Zedy. All rights reserved.
//

import Foundation

class BrainCalcy {
    
    func Restart()
    {
        NumWithOppArray = []
    }
    
    func Add (Number : Double , with operation : Character )
    {
        NumWithOppArray.append(CalcElement(Num : Number , OPP :operation ))
    }
    typealias CalcElement = (Num : Double , OPP : Character)
    private var NumWithOppArray : [CalcElement] = [] // contains (the numer and the next opp)
    
    func Result() -> String {
        
        CalcMulandDiv()
        CalcMinu()
        return String(NumWithOppArray.reduce(0, {$0 + $1.Num} ) )
    }
    
    //10 + 10 * 5 - 2 =
    
    func CalcMulandDiv (){
        
        for (index, Current ) in NumWithOppArray.enumerated(){
            
            if Current.OPP == "X" || Current.OPP == "/" {
                
                let AfterCurrent = NumWithOppArray[index + 1]
                var NewRes : CalcElement!
                if Current.OPP == "X"
                {
                    NewRes = CalcElement(Num: Current.Num * AfterCurrent.Num , OPP : AfterCurrent.OPP)
                }else if Current.OPP == "/"
                {
                    NewRes = CalcElement(Num: Current.Num / AfterCurrent.Num , OPP : AfterCurrent.OPP)

                }
                NumWithOppArray.remove(at: index)  ; NumWithOppArray.remove(at: index)
                NumWithOppArray.insert(NewRes, at: index)
                CalcMulandDiv()
                break
                // as the for think we have 5 iteration but we remove two so dident't update by remove so we break it

            }
        }
    }
    
    func CalcMinu(){
        
        for (index, Current ) in NumWithOppArray.enumerated(){
            
            if Current.OPP == "-" {
                
                let AfterCurrent = NumWithOppArray[index + 1]
                
                let NewRes : CalcElement = CalcElement(Num: Current.Num - AfterCurrent.Num , OPP : "+")
                
                NumWithOppArray.remove(at: index)  ; NumWithOppArray.remove(at: index)
                NumWithOppArray.insert(NewRes, at: index)
                CalcMinu()
                break
                // as the for think we have 5 iteration but we remove two so dident't update by remove so we break it
                
            }
        }
        
    }
    
    
    
    
    
    
}
