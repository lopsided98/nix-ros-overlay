
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, rosbag, catkin, cv-bridge, rosmsg, sensor-msgs, nav-msgs, message-generation, message-runtime, eigen, std-msgs, roscpp, ecto, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ecto-ros";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/ecto_ros-release/archive/release/kinetic/ecto_ros/0.4.8-0.tar.gz;
    sha256 = "9dfe52732e3d1fb00d7a23714f5d3d2bdf81904e12757f754a78a79daaf7a5ff";
  };

  propagatedBuildInputs = [ rosbag cv-bridge message-generation message-runtime eigen std-msgs roscpp ecto geometry-msgs ];
  nativeBuildInputs = [ cmake-modules rosbag rosmsg sensor-msgs cv-bridge catkin nav-msgs message-generation eigen std-msgs roscpp ecto geometry-msgs ];

  meta = {
    description = ''A set of generic cells to interact with ROS'';
    #license = lib.licenses.BSD;
  };
}
