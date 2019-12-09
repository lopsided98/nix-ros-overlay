
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-footprint-observer, boost, geometry-msgs, dynamic-reconfigure, tf, catkin, costmap-2d, visualization-msgs, roscpp, nav-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-cob-collision-velocity-filter";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_collision_velocity_filter/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "2f04a5669c78fc934f60d2bad95ee719a86591eb18d63deb63ceac518a12bec6";
  };

  buildType = "catkin";
  buildInputs = [ cob-footprint-observer boost geometry-msgs dynamic-reconfigure tf costmap-2d visualization-msgs roscpp nav-msgs tf2-ros ];
  propagatedBuildInputs = [ cob-footprint-observer boost geometry-msgs dynamic-reconfigure tf costmap-2d visualization-msgs roscpp nav-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_collision_velocity_filter package is a package for collision avoidance using teleoperation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
