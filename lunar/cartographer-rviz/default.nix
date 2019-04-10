
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer-ros, catkin, cartographer-ros-msgs, roslib, rviz, qt5, message-runtime, cartographer, eigen-conversions, roscpp }:
buildRosPackage {
  pname = "ros-lunar-cartographer-rviz";
  version = "0.2.0-r4";

  src = fetchurl {
    url = https://github.com/ros-gbp/cartographer_ros-release/archive/release/lunar/cartographer_rviz/0.2.0-4.tar.gz;
    sha256 = "8b176f57805b7b221f02d62d9d4fb30ea58140a33d140f9c94b9a4d443fdc8a0";
  };

  buildInputs = [ cartographer-ros roscpp qt5.qtbase cartographer-ros-msgs rviz message-runtime cartographer eigen-conversions roslib ];
  propagatedBuildInputs = [ cartographer-ros roscpp qt5.qtbase cartographer-ros-msgs rviz message-runtime cartographer eigen-conversions roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's RViz integration.'';
    #license = lib.licenses.Apache 2.0;
  };
}
