
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-melodic-chomp-motion-planner";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/chomp_motion_planner/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "153d8a79f12f963bf0db013834ce4c32d518b9cc0faf6ef8552a042a0d69e352";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
