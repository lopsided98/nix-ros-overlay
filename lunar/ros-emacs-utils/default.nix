
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, slime-wrapper, rosemacs, catkin, roslisp-repl, slime-ros }:
buildRosPackage {
  pname = "ros-lunar-ros-emacs-utils";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/lunar/ros_emacs_utils/0.4.12-0.tar.gz;
    sha256 = "ec4164c06e159ec11d8e3b9ef236e716f63dd6dca4c86b23ef7013e2312d9e33";
  };

  propagatedBuildInputs = [ rosemacs slime-wrapper slime-ros roslisp-repl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage of Emacs utils for ROS.
    Only there for simplifying the release process.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
