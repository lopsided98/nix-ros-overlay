
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp-repl, slime-ros, slime-wrapper }:
buildRosPackage {
  pname = "ros-noetic-ros-emacs-utils";
  version = "0.4.15-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/ros_emacs_utils/0.4.15-1.tar.gz";
    name = "0.4.15-1.tar.gz";
    sha256 = "9eaa7ec1b09685c7c7006a155e56372e9cd8fdc21055228f7f6d8b5dc15729b5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosemacs roslisp-repl slime-ros slime-wrapper ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage of Emacs utils for ROS.
    Only there for simplifying the release process.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
