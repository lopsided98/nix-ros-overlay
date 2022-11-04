
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer, cartographer-ros, cartographer-ros-msgs, catkin, eigen-conversions, message-runtime, qt5, roscpp, roslib, rviz }:
buildRosPackage {
  pname = "ros-melodic-cartographer-rviz";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer_ros-release/archive/release/melodic/cartographer_rviz/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4eeb8e97c9723d89c14718afc7d81ce1a0a47d41cd5e1d73a8144865840dc523";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cartographer cartographer-ros cartographer-ros-msgs eigen-conversions message-runtime qt5.qtbase roscpp roslib rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's RViz integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
