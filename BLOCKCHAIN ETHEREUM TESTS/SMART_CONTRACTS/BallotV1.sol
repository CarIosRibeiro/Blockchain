pragma solidity ^0.4.0;
contract Ballot {

    struct Voter {
        uint weight;
        bool voted;
        uint8 vote;
        // address delegate;
    }

    struct Proposal {
        uint voteCount; // could add other data about proposal
    }

    address chairperson;
    mapping(address => Voter) voters;
    Proposal[] proposals;


    // Create a new ballot with $(_numProposals) different proposals.
    function Ballot(uint8 _numProposals) public {
        chairperson = msg.sender;
        voters[chairperson].weight = 2;
        proposals.length = _numProposals;
    }

    // Give &(toVoter) the right to vote on this ballot.
    // May only be called by $(chairperson)
    function register(address toVoter) public {
        if (ms.sender != chairperson || voters[toVoter].voted) returns;
        voters[cdcd]
    }
}
