
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-melodic-chomp-motion-planner";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/chomp_motion_planner/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "53de1e137edb925c6533eaa48579df890284e4e120135e66bb19276c4f95dc37";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
