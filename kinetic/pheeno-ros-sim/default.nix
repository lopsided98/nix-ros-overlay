
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, gazebo-plugins, actionlib, rospy, tf, gazebo-msgs, geometry-msgs, image-transport, message-generation, rviz, message-runtime, xacro, gazebo-ros, catkin, nav-msgs, urdf, std-msgs, roscpp, sensor-msgs, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-pheeno-ros-sim";
  version = "0.1.5";

  src = fetchurl {
    url = https://github.com/ACSLaboratory/pheeno_ros_sim-release/archive/release/kinetic/pheeno_ros_sim/0.1.5-0.tar.gz;
    sha256 = "b7ad7942e500c94c8d77e9f4ef0d0faa67d80e52fa88f12a5abc037a7f64f524";
  };

  buildInputs = [ gazebo-ros actionlib-msgs geometry-msgs image-transport sensor-msgs gazebo-msgs roscpp gazebo-plugins rospy nav-msgs message-generation rviz urdf actionlib std-msgs tf xacro gazebo-ros-control ];
  propagatedBuildInputs = [ gazebo-ros actionlib-msgs geometry-msgs image-transport sensor-msgs gazebo-msgs roscpp gazebo-plugins rospy nav-msgs rviz message-runtime urdf actionlib std-msgs tf xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation ROS package for Pheeno system!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
