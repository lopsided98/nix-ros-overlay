
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-description";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/foxy/turtlebot3_description/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "da097954ee187b9b2d6822b9f9dc70847b9ef489232ce91a9fea6d98200eaa14";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D models of the TurtleBot3 for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
