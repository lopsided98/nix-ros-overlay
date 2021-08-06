
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-noetic-sr-hand-detector";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/shadow-robot/sr_hand_detector-release/archive/release/noetic/sr_hand_detector/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "27031b0e72e17e8522e28555db512b2d837f74e23ac9bbb32fb752866aba2256";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ libyamlcpp roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sr_hand_detector package'';
    license = with lib.licenses; [ gpl1 ];
  };
}
