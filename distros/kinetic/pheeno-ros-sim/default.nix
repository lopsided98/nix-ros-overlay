
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, gazebo-msgs, gazebo-plugins, gazebo-ros, gazebo-ros-control, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, roscpp, rospy, rviz, sensor-msgs, std-msgs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-pheeno-ros-sim";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/ACSLaboratory/pheeno_ros_sim-release/archive/release/kinetic/pheeno_ros_sim/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "b7ad7942e500c94c8d77e9f4ef0d0faa67d80e52fa88f12a5abc037a7f64f524";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs gazebo-msgs gazebo-plugins gazebo-ros gazebo-ros-control geometry-msgs image-transport message-runtime nav-msgs roscpp rospy rviz sensor-msgs std-msgs tf urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation ROS package for Pheeno system!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
