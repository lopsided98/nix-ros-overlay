
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-noetic-rosemacs";
  version = "0.4.17-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/rosemacs/0.4.17-1.tar.gz";
    name = "0.4.17-1.tar.gz";
    sha256 = "a9e54ab7bcacab7f65d3c929604bedc1557403c26151e34a3c9afaab9b4b2ff4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS tools for those who live in Emacs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
