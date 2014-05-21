//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Chris Arquelada on 4/30/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy)NSArray *questions;
@property (nonatomic, copy)NSArray *answers;

@property (nonatomic,weak)IBOutlet UILabel *questionLabel;
@property (nonatomic,weak)IBOutlet UILabel *answerLabel;


@end

@implementation BNRQuizViewController

<<<<<<< HEAD




=======
-(instancetype)initWithNibName:(NSString *)nibNameOrNil
                        bundle:(NSBundle *)nibBundleOrNil
{
    
    //Call the init method implemented by superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self){
        //Create two arrays filled with questions and answer
        // and make the pointers to them
        
        self.questions = @ [@"From what is cognac made?",
                            @"What is 7 + 7?",
                            @"What is the capitol of Vermont?",
                            @"Describe Mizzy"];
        self.answers = @[@"Grapes",
                         @"14",
                         @"Monteplier",
                         @"Bangsit,arte,pagpag"];
        
    
    }
    //Return the address of the new object
    return self;
    

}

-(IBAction)showQuestion:(id)sender
{
    //Step to the next question
    self.currentQuestionIndex++;
    
    //Am I past the last question
    if (self.currentQuestionIndex==[self.questions count]){
    
        //Go back to the first question
        self.currentQuestionIndex =0;
    }
    //Get the string at the index in the question Array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the string in the question label
    self.questionLabel.text = question;
    

    //Reset the answer label
    self.answerLabel.text = @"???";

}

-(IBAction)showAnswer:(id)sender
{
    //What is the answer to the current question?
    NSString *answer =self.answers[self.currentQuestionIndex];
    
    //Display it in the answer label
    self.answerLabel.text = answer;
    
}
>>>>>>> FETCH_HEAD
@end
