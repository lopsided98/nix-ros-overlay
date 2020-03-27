
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-footprint-observer, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, tf, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-collision-velocity-filter";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_collision_velocity_filter/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "e6f56e2470694516b2d019619fc80c46fdbd4677330d2d22120f97afbbc43d9a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cob-footprint-observer costmap-2d dynamic-reconfigure geometry-msgs nav-msgs roscpp tf tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_collision_velocity_filter package is a package for collision avoidance using teleoperation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
