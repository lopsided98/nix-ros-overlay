
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, crazyflie-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-crazyflie-sim";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/jazzy/crazyflie_sim/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "1b0d7a074d5660a5dccf809bee9bbb59f0890925f46796a5f4fb6d5e5011e8a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ crazyflie-interfaces rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Simulator for the Crazyswarm2 ROS stack";
    license = with lib.licenses; [ mit ];
  };
}
