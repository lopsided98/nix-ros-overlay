
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, crazyflie-py, geometry-msgs, nav-msgs, python3Packages, rclpy, sensor-msgs, tf-transformations, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-crazyflie-examples";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/lyrical/crazyflie_examples/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "17c752debe27555802e9fa1d9e2b20a0d9694f744e8da8133f8ad67360d29738";
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
