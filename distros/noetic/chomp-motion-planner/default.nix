
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-noetic-chomp-motion-planner";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/chomp_motion_planner/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "53b43ea3a032c3ddf38f476a280983c1af80fdfd0b29380b65a8cdfeab40d515";
  };

  buildType = "catkin";
  buildInputs = [ catkin moveit-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "chomp_motion_planner";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
