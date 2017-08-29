//
//  QuizLoader.swift
//  JWQuiz
//
//  Created by Giuseppe DI LISA on 21.08.17.
//  Copyright © 2017 Giuseppe DI LISA. All rights reserved.
//

import Foundation
import FirebaseDatabase
import UIKit




struct MultipleChoiceQuestion{
    let question: String
    let correctAnswer:String
    let answers:[String]
    
}

enum LoaderError: Error{

    case dictionaryFailed,pathFailed
}

class QuizLoader{
    
   
    
    var questions:[MultipleChoiceQuestion] = []

    
public func loadMultipleChoiceQuiz(completion: @escaping ( [MultipleChoiceQuestion]?)   -> Void) {
       
        let ref = Database.database().reference()
        
        var domanda:String = ""
        var risposte:[String] = []
        var rispostaCorretta:String = ""
            questions = [MultipleChoiceQuestion]()
        
        
        ref.child("Questions").observeSingleEvent(of: .value, with: { (snap) in
            
            if (snap.value != nil){
            let  array = snap.value as! NSDictionary
            

            for (_, questionItem) in array{
                //print(question)
                for (key,value) in (questionItem as! NSDictionary){
                    //print(" ", key,value)
                    
                    
                    switch(key as! String){
                    case "Answers":
                        risposte.removeAll()
                        for v in (value as! Array<String>) {
                            risposte.append(v)
                        }
                        
                        
                    case "Correctanswer":
                        rispostaCorretta = (value as! String)
                    case "Question":
                        domanda = value as! String
                    default:
                        break
                    }
                }
                
                let questionToAdd = MultipleChoiceQuestion(question: domanda , correctAnswer: rispostaCorretta, answers: risposte)
                
                self.questions.append(questionToAdd)
                print(questionToAdd)
                
            }
            }
            else{
                print("error")
                completion(nil)
                return
            }

            completion(self.questions)
            
        })

    
    }
    
    

}

