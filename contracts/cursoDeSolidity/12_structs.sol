// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

//"structs" es lo mismo que "objetos" en otros lenguajes.
//Se pueden importar de otros contratos:

//import "./ejemplo.sol";

contract structs {
    struct games {
        string description;
        uint price; 
        bool played;
    }

    games[] private gamesList;

    function getGame(uint _index) public view returns(games memory) {
        return gamesList[_index];
    }

    function createGame(string memory _description) public {
        gamesList.push(games(_description,10,false));
    }

    function updateDescription(uint _index,string memory _description) public {
        games storage currentGame = gamesList[_index];
        currentGame.description = _description;
    }
}

//memory vs storage

//nota: Siempre me da el sgte. error:
// transact to structs.updateDescription errored: Error occurred: revert.
// revert
// 	The transaction has been reverted to the initial state.
// Note: The called function should be payable if you send value and the value you send should be less than your current balance.
// You may want to cautiously increase the gas limit if the transaction went out of gas.
