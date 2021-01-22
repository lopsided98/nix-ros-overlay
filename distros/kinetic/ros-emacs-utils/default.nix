
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp-repl, slime-ros, slime-wrapper }:
buildRosPackage {
  pname = "ros-kinetic-ros-emacs-utils";
  version = "0.4.12";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/kinetic/ros_emacs_utils/0.4.12-0.tar.gz";
    name = "0.4.12-0.tar.gz";
    sha256 = "438bd67e27a9e36f686c6b07f2a3253bae1143aefc4a2301d49c504db6b14df9";
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
