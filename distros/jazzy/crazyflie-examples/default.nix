
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, crazyflie-py, geometry-msgs, nav-msgs, python3Packages, rclpy, sensor-msgs, tf-transformations, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-crazyflie-examples";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/jazzy/crazyflie_examples/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "c9e09e06e3fcb35cc89853efa34eb686fb5fc608c24e696c2268656478695c7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ crazyflie-py geometry-msgs nav-msgs rclpy sensor-msgs tf-transformations tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Examples for the Crazyswarm2 ROS stack";
    license = with lib.licenses; [ mit ];
  };
}
