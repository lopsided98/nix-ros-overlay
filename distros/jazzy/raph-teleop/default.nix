
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-cmake, ament-cmake-copyright, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-python, ament-cmake-xmllint, joy-linux, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-raph-teleop";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_common-release/archive/release/jazzy/raph_teleop/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "f1fdf0031faef64e18ddbc815398671c9f7e01116c714e57afc8b8df76028a96";
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
