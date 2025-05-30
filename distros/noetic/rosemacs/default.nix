
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-noetic-rosemacs";
  version = "0.4.18-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/rosemacs/0.4.18-1.tar.gz";
    name = "0.4.18-1.tar.gz";
    sha256 = "c6e4bfe59da62164866d12e7aa69310cd642d78baee1e2e0ec91ec1a557d5a3e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS tools for those who live in Emacs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
