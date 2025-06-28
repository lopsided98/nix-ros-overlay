
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, crazyflie-py, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-crazyflie-examples";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/humble/crazyflie_examples/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7dbe6f1a007944eb9b4c424428c3c4ea2b2a918bd21b84330895a9e2a8af2018";
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
