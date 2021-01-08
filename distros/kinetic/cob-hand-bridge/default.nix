
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, control-msgs, diagnostic-updater, message-generation, message-runtime, rosserial-python, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-cob-hand-bridge";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/kinetic/cob_hand_bridge/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "96b037fb37fb3b15cf5392ca9a1f2699e15acea3dffc8b1c68946d8e989616fb";
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
