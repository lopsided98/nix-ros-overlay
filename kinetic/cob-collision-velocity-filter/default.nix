
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, boost, catkin, tf2-ros, roscpp, cob-footprint-observer, nav-msgs, visualization-msgs, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-collision-velocity-filter";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_collision_velocity_filter/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "2f04a5669c78fc934f60d2bad95ee719a86591eb18d63deb63ceac518a12bec6";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d boost roscpp tf2-ros cob-footprint-observer nav-msgs visualization-msgs dynamic-reconfigure tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d boost tf2-ros roscpp cob-footprint-observer nav-msgs visualization-msgs dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_collision_velocity_filter package is a package for collision avoidance using teleoperation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
