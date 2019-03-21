
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, boost, tf, catkin, cob-footprint-observer, nav-msgs, visualization-msgs, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-collision-velocity-filter";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_collision_velocity_filter/0.7.3-0.tar.gz;
    sha256 = "770f2f7d881fe78185d6f8364a36a7e944faa51ae8004cdf5d7bb38495d23191";
  };

  propagatedBuildInputs = [ costmap-2d boost tf roscpp cob-footprint-observer nav-msgs dynamic-reconfigure visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ costmap-2d boost tf catkin roscpp cob-footprint-observer nav-msgs dynamic-reconfigure visualization-msgs geometry-msgs ];

  meta = {
    description = ''The cob_collision_velocity_filter package is a package for collision avoidance using teleoperation.'';
    #license = lib.licenses.Apache 2.0;
  };
}
