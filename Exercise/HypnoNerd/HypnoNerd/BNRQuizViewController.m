//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Chris Arquelada on 3/26/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestinIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;



@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;



@end

@implementation BNRQuizViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil
            bundle:(NSBundle *)nibBundleOrNil
{
    //Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle: nibBundleOrNil];
    
    if (self){
    
        //Create two array filled with question and answer
        // and make the pointers point to them
        
        self.questions = @[@"From what is cognac made? ",
                          @"What is 7 + 7",
                          @"What is the capital of Vermont"];
        
        self.answers = @[@"Grapes",
                        @"14",
                        @"Montpelier"];
        
        self.tabBarItem.title = @"Quiz";
        
    }
        //Return the address of the new object
        return self;
}





-(IBAction) showQuestion:(id)sender
{
    //Step to the next queston
    self.currentQuestinIndex++;
    
    //Am i past the last question?
    if (self.currentQuestinIndex == [self.questions count]){
    
        //Go back to the first question
        self.currentQuestinIndex = 0;
    }
    //Get the  string at the index in the question array
    NSString *question = self.questions[self.currentQuestinIndex];
    
    //Display the string in the question label
    self.questionLabel.text = question;
    
    //reset the answer label
    self.answerLabel.text = @"???";
    
}

-(IBAction) showAnswer:(id)sender
{
    //What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestinIndex];
    
    //Display it in the answer label
    self.answerLabel.text = answer;
}

@end

//hello

//imac