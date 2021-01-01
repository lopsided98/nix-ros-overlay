
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, control-msgs, diagnostic-updater, message-generation, message-runtime, rosserial-python, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-hand-bridge";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/noetic/cob_hand_bridge/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "8e2b373b55092457bd19c230679bbeaca383e9384b3116994292d8a8c9f4b097";
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
