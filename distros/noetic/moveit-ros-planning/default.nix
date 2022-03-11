
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-reconfigure, eigen, message-filters, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-occupancy-map-monitor, pluginlib, rosconsole, roscpp, rostest, srdfdom, tf2, tf2-eigen, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-planning";
  version = "1.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_planning/1.1.9-1.tar.gz";
    name = "1.1.9-1.tar.gz";
    sha256 = "5e29b8043a89e81c76da4d164cacde605e66784e9919c6e27149294248f83197";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  checkInputs = [ moveit-resources-panda-moveit-config rostest ];
  propagatedBuildInputs = [ actionlib dynamic-reconfigure message-filters moveit-core moveit-msgs moveit-ros-occupancy-map-monitor pluginlib rosconsole roscpp srdfdom tf2 tf2-eigen tf2-geometry-msgs tf2-msgs tf2-ros urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Planning components of MoveIt that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
