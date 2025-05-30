
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-noetic-slime-wrapper";
  version = "0.4.18-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/slime_wrapper/0.4.18-1.tar.gz";
    name = "0.4.18-1.tar.gz";
    sha256 = "a7660ac39316347ff6a51435b0b317cbc75ed193ee09df777fb9d7799f474c7f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS wrapper for slime";
    license = with lib.licenses; [ publicDomain ];
  };
}
