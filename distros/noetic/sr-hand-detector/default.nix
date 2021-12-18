
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-noetic-sr-hand-detector";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/shadow-robot/sr_hand_detector-release/archive/release/noetic/sr_hand_detector/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "385459fd4dab5b1d61eb25e3b609f0567501c9298d04db36ba3a65948ff637c2";
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
