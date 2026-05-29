
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch, launch-testing, launch-testing-ros, python3Packages, rclcpp, rclcpp-lifecycle, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-diagnostic-updater";
  version = "4.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/rolling/diagnostic_updater/4.5.7-1.tar.gz";
    name = "4.5.7-1.tar.gz";
    sha256 = "8eb717c4c81e3dec93385f578909ef0faf10bf60f62af54269b6cd1d8e840cf7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ros python3Packages.pytest rclcpp-lifecycle ];
  propagatedBuildInputs = [ diagnostic-msgs rclcpp rclpy std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "Update and publish diagnostic information.";
    license = with lib.licenses; [ bsd3 ];
  };
}
