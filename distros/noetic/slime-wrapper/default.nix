
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-noetic-slime-wrapper";
  version = "0.4.15-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/slime_wrapper/0.4.15-1.tar.gz";
    name = "0.4.15-1.tar.gz";
    sha256 = "b8eb1de5c2845d5b177173c6d6ad7e060044f327cf0da9711ba30eff11bb2ff1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for slime'';
    license = with lib.licenses; [ publicDomain ];
  };
}
