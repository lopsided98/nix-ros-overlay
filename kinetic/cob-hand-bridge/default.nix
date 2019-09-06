
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosserial-python, control-msgs, sensor-msgs, catkin, diagnostic-updater, message-generation, message-runtime, actionlib, std-msgs, angles }:
buildRosPackage {
  pname = "ros-kinetic-cob-hand-bridge";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/kinetic/cob_hand_bridge/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "b7f091e1bfd65ff59f7bfbd7e324be15309f97be6ce5d0e802714ef7690398d4";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs control-msgs sensor-msgs diagnostic-updater message-generation actionlib angles ];
  propagatedBuildInputs = [ std-srvs rosserial-python control-msgs sensor-msgs diagnostic-updater message-runtime actionlib std-msgs angles ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand_bridge package'';
    license = with lib.licenses; [ asl20 ];
  };
}
