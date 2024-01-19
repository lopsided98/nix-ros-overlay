
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslib, rostest, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-sr-hand-detector";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/shadow-robot/sr_hand_detector-release/archive/release/noetic/sr_hand_detector/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "354b8355e441f1149d5dc9ede3ec74a32a1120d3289c6d3d6dbe1ff5449954bb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp roslib yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sr_hand_detector package'';
    license = with lib.licenses; [ "GPL" ];
  };
}
