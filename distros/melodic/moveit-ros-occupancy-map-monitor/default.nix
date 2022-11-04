
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometric-shapes, moveit-core, moveit-msgs, octomap, pluginlib, rosunit, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-occupancy-map-monitor";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_occupancy_map_monitor/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "a620367fc90e687799a48b55d358b03b3ee070d94432ead0fbedd88f4ffa0782";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometric-shapes moveit-core moveit-msgs octomap pluginlib tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to occupancy map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
