
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-noetic-sr-hand-detector";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/shadow-robot/sr_hand_detector-release/archive/release/noetic/sr_hand_detector/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "4bae5c77b710f128080d5cbbb2b5a28de35e94ce1b4bac0a889f71f8aa0e7d14";
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
