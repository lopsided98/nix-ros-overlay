
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, control-msgs, diagnostic-updater, message-generation, message-runtime, rosserial-python, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-hand-bridge";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/noetic/cob_hand_bridge/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "1f91d2568bc33a99e5fe3548714a1f6525890811228c74477a5418651ed8c528";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib angles control-msgs diagnostic-updater message-runtime rosserial-python sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand_bridge package provides a driver for the gripper of Care-O-bot4.'';
    license = with lib.licenses; [ asl20 ];
  };
}
