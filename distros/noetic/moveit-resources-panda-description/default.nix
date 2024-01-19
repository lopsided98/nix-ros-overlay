
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-panda-description";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_panda_description/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "fccba1dad2a53c26d729b048cd894b14d6f0d855cdfba89daf9e1b8071d5167f";
  };

  buildType = "catkin";
  buildInputs = [ catkin xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''panda Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
