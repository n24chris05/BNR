
#import "BNRItem.h"

@implementation BNRItem

+(instancetype)randomItem
{
    //Create an immutable array of three adjectives
    NSArray *randomAdjectiveList = @[@"Fluffy",@"Rusty",@"Shiny"];
    
    //Create an immutable array of three nouns
    NSArray *randomNounList = @[@"Bear",@"Spork",@"Mac"];
    
    //Get the index of a random adjective/noun from the list
    //Note: The % operator, called the modulo operator,gibes
    //you the remainder. so adjectiveIndex is a random number
    //from 0 to 2 inclusive.
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    //Note that NSinteger is not an object, but type definition
    //for "long"
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex],[randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [ NSString stringWithFormat:@"%c%c%c%c%c",
                                    'O' +arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    'O' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    'O' + arc4random() % 10];
    
    BNRItem *newItem = [[self alloc]initWithItemName:randomName
                                  valueInDollars:randomValue
                                    serialNumber:randomSerialNumber];
    return newItem;
    
}
-(instancetype)init
{
    return [self initWithItemName:@"Item"];
}

-(instancetype)initWithItemName:(NSString *)name
                    valueInDollars:(int)value
                        serialNumber:(NSString *)sNumber
{
    //Call the superclass's designated initializer
    self=[super init];
    
    //Did the superclass's desginated initializeir succedd?
    if (self){
        //Give the instance variable initial values
        _itemName =name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        //Set _dateCreated to the current date and time
        _dateCreated = [[NSDate alloc]init];
    }
    
    //return the address of the newly initialed object
    return self;

}

-(instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                valueInDollars:0
                    serialNumber:@""];
}

-(void)setItemName:(NSString *)str
{
    _itemName = str;
}
-(NSString *)itemName
{
    return _itemName;
    
}
-(void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
    
}
-(NSString *)serialNumber
{
    return _serialNumber;
}
-(void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}
-(int)valueInDollars
{
    return _valueInDollars;
}
-(NSDate *)dateCreated
{
    return _dateCreated;
}

-(NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc]initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                                self.itemName,
                                self.serialNumber,
                                self.valueInDollars,
                                self.dateCreated ];
    return descriptionString;
}
//////////////////////////////////////////ARC//////////////////////////////////////////
@end