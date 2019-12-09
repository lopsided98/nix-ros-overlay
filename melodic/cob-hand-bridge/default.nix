
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, std-msgs, std-srvs, actionlib, catkin, rosserial-python, diagnostic-updater, angles, message-runtime, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-hand-bridge";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/melodic/cob_hand_bridge/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "6849d1db4ffd4043e6c46027bbfe6a0f1f2f5fef2951015c15989182299b8845";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs std-srvs actionlib diagnostic-updater angles message-generation control-msgs ];
  propagatedBuildInputs = [ sensor-msgs std-msgs std-srvs actionlib rosserial-python diagnostic-updater angles message-runtime control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand_bridge package'';
    license = with lib.licenses; [ asl20 ];
  };
}
