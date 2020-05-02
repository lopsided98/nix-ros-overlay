
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometric-shapes, moveit-core, moveit-msgs, octomap, pluginlib, rosunit, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-occupancy-map-monitor";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_occupancy_map_monitor/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "d5dae1ae2579cb36e079012e30ff83d894eb16e5b0c3a171e924a55ab527bb67";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometric-shapes moveit-core moveit-msgs octomap pluginlib tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to occupancy map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
