
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, geometry-msgs, urdf, tf, image-transport, actionlib-msgs, nav-msgs, sensor-msgs, gazebo-ros-control, std-msgs, catkin, roscpp, gazebo-ros, message-generation, rospy, actionlib, gazebo-msgs, rviz, message-runtime, gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-pheeno-ros-sim";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/ACSLaboratory/pheeno_ros_sim-release/archive/release/kinetic/pheeno_ros_sim/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "b7ad7942e500c94c8d77e9f4ef0d0faa67d80e52fa88f12a5abc037a7f64f524";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs xacro geometry-msgs urdf std-msgs actionlib tf image-transport gazebo-msgs rviz actionlib-msgs gazebo-ros-control roscpp rospy gazebo-ros message-generation nav-msgs gazebo-plugins ];
  propagatedBuildInputs = [ sensor-msgs xacro geometry-msgs urdf message-runtime std-msgs tf actionlib image-transport gazebo-msgs rviz actionlib-msgs gazebo-ros-control roscpp gazebo-ros rospy nav-msgs gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation ROS package for Pheeno system!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
