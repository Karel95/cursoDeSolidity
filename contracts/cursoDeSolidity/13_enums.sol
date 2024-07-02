// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract enums {
    enum Status {
        CREATED,//ind 0
        PAID,//ind 1
        SHIPPED,//ind 2
        DELIVERED,//ind 3
        CANCELED //ind 4
        }
    
    Status public status;

    function get() public view returns(Status) {
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.CANCELED;
    }

    function reset() public {
        delete status;//ind 0
    }
}


