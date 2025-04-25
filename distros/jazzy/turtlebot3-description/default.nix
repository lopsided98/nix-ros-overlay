
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-description";
  version = "2.2.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_description/2.2.9-1.tar.gz";
    name = "2.2.9-1.tar.gz";
    sha256 = "ca1ab58b89d5ced8c82d9df06b608cd5f9f48b91f7778a73caa8a324479c6607";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D models of the TurtleBot3 for simulation and visualization";
    license = with lib.licenses; [ asl20 ];
  };
}
