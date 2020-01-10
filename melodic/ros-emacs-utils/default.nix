
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp-repl, slime-ros, slime-wrapper }:
buildRosPackage {
  pname = "ros-melodic-ros-emacs-utils";
  version = "0.4.13";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/ros_emacs_utils/0.4.13-0.tar.gz";
    name = "0.4.13-0.tar.gz";
    sha256 = "990b5e5da666f743e90acf3e00a9cc0d41fd9c72b982b0ae09822ee6fc2635b6";
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
