pragma solidity ^0.4.0;

contract Command {
    struct Light {
    bool state;
    }

    string[] public history;

    Light[] public bulbs;

/* The Command interface */
    function Execute(string command) {
        history.push(command);
    }

/* The Invoker class */
    function Switch(bytes32 command) {
        if(command == "on") {
            Execute("on");
        } else {
            Execute("off");
        }
    }
/* The Receiver class */
    function Lamp()  {
        Light memory light;
        light.state != light.state;
    }

/* The Command for turning on the light - ConcreteCommand #1 */
    function On () {
        Execute("on");
    }
/* The Command for turning off the light - ConcreteCommand #2 */
    function Off() {
        Execute("off");
    }

}