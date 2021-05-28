
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-melodic-chomp-motion-planner";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/chomp_motion_planner/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "1eefe8cb37cde262b0e7840f03ac5a1384021c843606ee649953201df81c84c8";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
