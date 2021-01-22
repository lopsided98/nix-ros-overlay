
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-threads, geometry-msgs, roch-msgs, roscpp, std-msgs, yocs-controllers }:
buildRosPackage {
  pname = "ros-kinetic-roch-safety-controller";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_safety_controller/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "9a0f80ebe4968f668b575fe33869c6cc9b622456930f851e74d58aa25777f63a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-threads geometry-msgs roch-msgs roscpp std-msgs yocs-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller ensuring the safe operation of roch.

    The SafetyController keeps track of ult, psd and cliff events. In case of the first three,
    roch is commanded to move back. 
    This controller can be enabled/disabled.
    The safety states (cliff, psd and ult etc.) can be reset. WARNING: Dangerous!
    Refrence with yujinrobot' kobuki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
