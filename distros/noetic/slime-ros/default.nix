
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp, sbcl, slime-wrapper }:
buildRosPackage {
  pname = "ros-noetic-slime-ros";
  version = "0.4.15-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/slime_ros/0.4.15-1.tar.gz";
    name = "0.4.15-1.tar.gz";
    sha256 = "f5c490a4f15902c50345bf41af5214421014b5847df8a0fa7a9dd27aa0ceecbf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosemacs roslisp sbcl slime-wrapper ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extensions for slime to assist in working with ROS packages'';
    license = with lib.licenses; [ publicDomain ];
  };
}
