//Declare the solidity Version
pragma solidity >= 0.4.26; 

//Declare the smart Contract

contract StudentMarks {

    struct Student {
        int ID; 
        string fname;
        string lname; 
        int marks;
    }

    address owner; 
    int public stdCount = 0;
    mapping(int => Student) public stdRecords; 


    modifier onlyOwner {
        require(owner == msg.sender);
        _;
    }

    //Declaring the Constructors

    constructor()
    {
        owner == msg.sender;
    }

    function addNewRecords(
        int _ID,
        string memory _fName,
        string memory _lName,
        int _marks
    ) public onlyOwner {
        stdCount = stdCount + 1;

            //fetch the data
            stdRecords[stdCount] = Student(_ID, _fName, _lName, _marks);


    }

    //function to add bonus marks
    function bonusMarks(int _bonus) public onlyOwner{
        stdRecords[stdCount].marks = stdRecords[stdCount].marks + _bonus; 
    }


}