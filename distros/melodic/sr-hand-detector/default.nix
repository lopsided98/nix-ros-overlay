
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-melodic-sr-hand-detector";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/shadow-robot/sr_hand_detector-release/archive/release/melodic/sr_hand_detector/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "542a25bb3b2df53eb8477962b57471d8d1fb080e74d0d182c58a5f86b05037b8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ libyamlcpp roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sr_hand_detector package'';
    license = with lib.licenses; [ "GPL" ];
  };
}
