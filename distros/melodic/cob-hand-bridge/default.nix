
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, control-msgs, diagnostic-updater, message-generation, message-runtime, rosserial-python, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-cob-hand-bridge";
  version = "0.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/melodic/cob_hand_bridge/0.6.8-1.tar.gz";
    name = "0.6.8-1.tar.gz";
    sha256 = "98bca9054834c6dce9280a71d4eac377c66f38428fc9b68744f227ab4a721c53";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib angles control-msgs diagnostic-updater message-runtime rosserial-python sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand_bridge package provides a driver for the gripper of Care-O-bot4.'';
    license = with lib.licenses; [ asl20 ];
  };
}
