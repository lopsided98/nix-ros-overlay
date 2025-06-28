
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, crazyflie-py, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-crazyflie-examples";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/jazzy/crazyflie_examples/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "84725281a5eacab29aaa7c4e87c0437c6b862aa15b7e2d1a7a79a8ea6da2a4de";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ crazyflie-py rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Examples for the Crazyswarm2 ROS stack";
    license = with lib.licenses; [ mit ];
  };
}
