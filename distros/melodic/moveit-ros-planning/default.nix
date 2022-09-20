
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-reconfigure, eigen, message-filters, moveit-core, moveit-msgs, moveit-ros-occupancy-map-monitor, pluginlib, rosconsole, roscpp, srdfdom, tf2, tf2-eigen, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-planning";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_planning/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "5ebd50c9121fb9f374206223ccd44c532d41144e98a663369ccd514bca7f3564";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen ];
  propagatedBuildInputs = [ actionlib dynamic-reconfigure message-filters moveit-core moveit-msgs moveit-ros-occupancy-map-monitor pluginlib rosconsole roscpp srdfdom tf2 tf2-eigen tf2-geometry-msgs tf2-msgs tf2-ros urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Planning components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
