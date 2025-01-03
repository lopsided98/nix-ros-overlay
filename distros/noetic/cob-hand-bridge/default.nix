
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, control-msgs, diagnostic-updater, message-generation, message-runtime, rosserial-python, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-hand-bridge";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/noetic/cob_hand_bridge/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "3cd664a82a0ac49c073c770222ac267335cfd3d019d335861781f659d0191eda";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib angles control-msgs diagnostic-updater message-runtime rosserial-python sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_hand_bridge package provides a driver for the gripper of Care-O-bot4.";
    license = with lib.licenses; [ asl20 ];
  };
}
