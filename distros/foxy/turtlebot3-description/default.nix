
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-description";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/foxy/turtlebot3_description/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "a797c9caf5baa92a4fd278d972d8c32e22252196d01249184b4013f56c44a13b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D models of the TurtleBot3 for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
