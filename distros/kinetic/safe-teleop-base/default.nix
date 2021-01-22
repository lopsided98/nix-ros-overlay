
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-safe-teleop-base";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/shared_autonomy_manipulation-release/archive/release/kinetic/safe_teleop_base/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "09231bd804c7341f42fa0df0e0a4e8ea9c0fd2c24dcbdb8dab88a9dc9c68f8c2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ base-local-planner costmap-2d roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides automatic collision avoidance and is intended to be used for safer teleoperation of a robot base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
