
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, base-local-planner, pcl, costmap-2d, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-safe-teleop-base";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/shared_autonomy_manipulation-release/archive/release/kinetic/safe_teleop_base/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "3d166a7bafab0cb5ccb1226b82b6f2fe4b65bfdfc68f4a90000f293531c7f046";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d base-local-planner roscpp pcl ];
  propagatedBuildInputs = [ costmap-2d base-local-planner roscpp pcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides automatic collision avoidance and is intended to be used for safer teleoperation of a robot base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
