
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, pcl, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-safe-teleop-base";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/shared_autonomy_manipulation-release/archive/release/kinetic/safe_teleop_base/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "3d166a7bafab0cb5ccb1226b82b6f2fe4b65bfdfc68f4a90000f293531c7f046";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ base-local-planner costmap-2d pcl roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides automatic collision avoidance and is intended to be used for safer teleoperation of a robot base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
