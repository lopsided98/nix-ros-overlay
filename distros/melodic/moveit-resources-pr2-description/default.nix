
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-moveit-resources-pr2-description";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/moveit_resources_pr2_description/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "01a026146163de2a0f08186c0cbe623f69ddfa0c86b0a258d877a5a9d15a4bd3";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PR2 Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
