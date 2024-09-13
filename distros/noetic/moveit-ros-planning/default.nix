
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-reconfigure, eigen, message-filters, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-occupancy-map-monitor, pluginlib, rosconsole, roscpp, rostest, srdfdom, tf2, tf2-eigen, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-planning";
  version = "1.1.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_planning/1.1.15-1.tar.gz";
    name = "1.1.15-1.tar.gz";
    sha256 = "5cb95773ca3bc6e9d0a5265d4a174efbac80f8f6d0853b3b65ec966d671c93dd";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen ];
  checkInputs = [ moveit-resources-panda-moveit-config rostest ];
  propagatedBuildInputs = [ actionlib dynamic-reconfigure message-filters moveit-core moveit-msgs moveit-ros-occupancy-map-monitor pluginlib rosconsole roscpp srdfdom tf2 tf2-eigen tf2-geometry-msgs tf2-msgs tf2-ros urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Planning components of MoveIt that use ROS";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
