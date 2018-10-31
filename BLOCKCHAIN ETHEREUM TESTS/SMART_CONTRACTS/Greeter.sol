pragma solidity ^0.4.0;


contract FirstContract {
    /* Define variable greeting the type string */
    string public yourName;

    /* This runs when the contract is executed */
    function Greeter () public {
        yourName = "Digite seu nome";
    }

    function Nome (string name) public {
        yourName = name;
    }

    function Ola () public constant returns (string) {
        return yourName;
    }
}
