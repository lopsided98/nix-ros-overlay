
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, ecto, eigen, geometry-msgs, message-generation, message-runtime, nav-msgs, rosbag, roscpp, rosmsg, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ecto-ros";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ecto_ros-release/archive/release/kinetic/ecto_ros/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "9dfe52732e3d1fb00d7a23714f5d3d2bdf81904e12757f754a78a79daaf7a5ff";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules nav-msgs rosmsg sensor-msgs ];
  propagatedBuildInputs = [ cv-bridge ecto eigen geometry-msgs message-generation message-runtime rosbag roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of generic cells to interact with ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
