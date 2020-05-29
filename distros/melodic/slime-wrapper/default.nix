
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-melodic-slime-wrapper";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/slime_wrapper/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "246f8018e61b66b887d4f86b1c39f3b4fd50d7369896b3e93bb9fd850439008e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for slime'';
    license = with lib.licenses; [ publicDomain ];
  };
}
