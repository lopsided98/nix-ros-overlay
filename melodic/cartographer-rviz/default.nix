
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer-ros, eigen-conversions, cartographer, catkin, roslib, roscpp, rviz, qt5, cartographer-ros-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-cartographer-rviz";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer_ros-release/archive/release/melodic/cartographer_rviz/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4eeb8e97c9723d89c14718afc7d81ce1a0a47d41cd5e1d73a8144865840dc523";
  };

  buildType = "catkin";
  buildInputs = [ cartographer-ros eigen-conversions cartographer roslib qt5.qtbase rviz roscpp cartographer-ros-msgs message-runtime ];
  propagatedBuildInputs = [ cartographer-ros eigen-conversions cartographer roslib qt5.qtbase rviz roscpp cartographer-ros-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's RViz integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
