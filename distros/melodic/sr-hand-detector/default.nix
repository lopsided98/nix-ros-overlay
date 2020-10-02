
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-grant, libyamlcpp, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-melodic-sr-hand-detector";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/shadow-robot/sr_hand_detector-release/archive/release/melodic/sr_hand_detector/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "24352105d425a716f290d456599a839261b5e13c99ebf7f738ee685edf747241";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ ethercat-grant libyamlcpp roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sr_hand_detector package'';
    license = with lib.licenses; [ gpl1 ];
  };
}
