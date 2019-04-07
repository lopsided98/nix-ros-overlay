
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-melodic-chomp-motion-planner";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/chomp_motion_planner/1.0.1-0.tar.gz;
    sha256 = "1f5bd973706dc3c014bb87d0e75f202e83db8d8d0883774f9eda58085df2b895";
  };

  buildInputs = [ roscpp moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''chomp_motion_planner'';
    #license = lib.licenses.BSD;
  };
}
