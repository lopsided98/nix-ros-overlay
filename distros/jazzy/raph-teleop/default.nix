
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-cmake, ament-cmake-copyright, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-python, ament-cmake-xmllint, joy-linux, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-raph-teleop";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_common-release/archive/release/jazzy/raph_teleop/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "e448fb2e2a100f998390ca6de84353e4f02f0766d2fcc6d17676206ee3384dc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-copyright ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ ackermann-msgs joy-linux rclpy sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Scripts and launch files for Raph Rover teleoperation";
    license = with lib.licenses; [ mit ];
  };
}
