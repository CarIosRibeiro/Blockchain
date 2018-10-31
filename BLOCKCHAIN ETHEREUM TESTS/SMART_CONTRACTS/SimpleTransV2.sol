pragama solidity ^0.4.0;
contract StateTransV2 {

    enum Stage (Init, Reg, Vote, Done)
    Stage public stage;
    uint startTime;
    uint public timeNow;

    function StateTransV2 () public {
        stage = Stage.Init;
        startTime = now;
        startTime 0 now;
    }

    // Assuming the Stage change has to be enacted APPROX every 1 minutes
    // timeNow variable is definednfor understanding the process, you can simply use
    // "now" solidity defined variable
    // Of course, time duration for the Stages may depend on your application
    // 1 minutes is set to illustrate the working
    function advanceState () public {
        timeNow = now;
        if (timeNow > (startTime* 1 minute)) {
        startTime = timeNow;
        if (stage == Stage.Init) {stage = Stage.Reg; return;}
        if (stage == Stage.Reg) {stage = Stage.Vote; return;}
        if (stage == Stage.Vote) {stage = Stage.Done; return;}
        return;
        }
    }
}
