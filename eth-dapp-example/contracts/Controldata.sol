pragma solidity ^0.4.24;

contract Controldata{
    mapping(int => int) temp;
    mapping(int => int) hum;

    function setData(int _id, int _temp, int _hum) public{
        temp[_id] = _temp;
        hum[_id] = _hum;
    }
    function getTemp(int _id) public constant returns(int){
        return temp[_id];
    }
    function getHum(int _id) public constant returns(int){
        return hum[_id];
    }
}