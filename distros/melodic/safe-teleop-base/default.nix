
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, roscpp }:
buildRosPackage {
  pname = "ros-melodic-safe-teleop-base";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/shared_autonomy_manipulation-release/archive/release/melodic/safe_teleop_base/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "5ac007d2e99c8152a67a16dcfaea3ec11535b8e94ec591bf5fd2cbdd87f46450";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ base-local-planner costmap-2d roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides automatic collision avoidance and is intended to be used for safer teleoperation of a robot base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
