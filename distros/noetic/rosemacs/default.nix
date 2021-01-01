
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-noetic-rosemacs";
  version = "0.4.15-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/rosemacs/0.4.15-1.tar.gz";
    name = "0.4.15-1.tar.gz";
    sha256 = "00df88d295329f832fcb84be69639f7e81eef42198301c10f323c0aa77ee9baf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS tools for those who live in Emacs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
