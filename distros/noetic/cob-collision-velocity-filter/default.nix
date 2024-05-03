
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-footprint-observer, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, tf, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-collision-velocity-filter";
  version = "0.8.24-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_collision_velocity_filter/0.8.24-2.tar.gz";
    name = "0.8.24-2.tar.gz";
    sha256 = "8d8df72371aa3f39ddf6ab8feca008d75abed47b2c32a87cd5aed3143b9df4fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cob-footprint-observer costmap-2d dynamic-reconfigure geometry-msgs nav-msgs roscpp tf tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_collision_velocity_filter package is a package for collision avoidance using teleoperation.";
    license = with lib.licenses; [ asl20 ];
  };
}
