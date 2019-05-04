
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosserial-python, control-msgs, sensor-msgs, catkin, diagnostic-updater, message-generation, message-runtime, actionlib, std-msgs, angles }:
buildRosPackage {
  pname = "ros-kinetic-cob-hand-bridge";
  version = "0.6.5";

  src = fetchurl {
    url = https://github.com/ipa320/cob_hand-release/archive/release/kinetic/cob_hand_bridge/0.6.5-0.tar.gz;
    sha256 = "f3b51ce3c2630d4b96cba7f599ec516ef2f3434399fe8d3f43317cfe7b5c47ef";
  };

  buildInputs = [ std-srvs control-msgs sensor-msgs diagnostic-updater message-generation actionlib angles ];
  propagatedBuildInputs = [ std-srvs rosserial-python control-msgs sensor-msgs diagnostic-updater message-runtime actionlib std-msgs angles ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand_bridge package'';
    license = with lib.licenses; [ asl20 ];
  };
}
