
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-footprint-observer, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, tf, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-collision-velocity-filter";
  version = "0.8.23-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_collision_velocity_filter/0.8.23-1.tar.gz";
    name = "0.8.23-1.tar.gz";
    sha256 = "fa8f2fdd9e008b125fff2047c9c855a5be2d9ac3834eaac8940a23b4eb515b2c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cob-footprint-observer costmap-2d dynamic-reconfigure geometry-msgs nav-msgs roscpp tf tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_collision_velocity_filter package is a package for collision avoidance using teleoperation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
