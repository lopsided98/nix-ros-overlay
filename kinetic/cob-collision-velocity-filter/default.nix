
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, boost, catkin, roscpp, cob-footprint-observer, nav-msgs, visualization-msgs, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-collision-velocity-filter";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_collision_velocity_filter/0.7.4-0.tar.gz;
    sha256 = "73acac05785093bb89a8e2584039f97d46b7501865432b0cdada692e58f4b218";
  };

  buildInputs = [ costmap-2d boost tf roscpp cob-footprint-observer nav-msgs dynamic-reconfigure visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d boost tf roscpp cob-footprint-observer nav-msgs dynamic-reconfigure visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_collision_velocity_filter package is a package for collision avoidance using teleoperation.'';
    #license = lib.licenses.Apache 2.0;
  };
}
