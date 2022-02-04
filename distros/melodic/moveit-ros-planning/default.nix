
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-reconfigure, eigen, message-filters, moveit-core, moveit-msgs, moveit-ros-occupancy-map-monitor, pluginlib, rosconsole, roscpp, srdfdom, tf2, tf2-eigen, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-planning";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_planning/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "174ece09b8742ff6e25c45c8bf1d7e7fb52ad754e9e6741f5201008d84d3bb23";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  propagatedBuildInputs = [ actionlib dynamic-reconfigure message-filters moveit-core moveit-msgs moveit-ros-occupancy-map-monitor pluginlib rosconsole roscpp srdfdom tf2 tf2-eigen tf2-geometry-msgs tf2-msgs tf2-ros urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Planning components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
