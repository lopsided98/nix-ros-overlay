
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-noetic-chomp-motion-planner";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/chomp_motion_planner/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "6ca2eeb9810839f50b1765660449b64241187e0915ef394d51af53ad25dc7ac1";
  };

  buildType = "catkin";
  buildInputs = [ catkin moveit-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
