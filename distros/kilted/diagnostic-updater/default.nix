
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch, launch-testing, launch-testing-ros, python3Packages, rclcpp, rclcpp-lifecycle, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-diagnostic-updater";
  version = "4.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/kilted/diagnostic_updater/4.3.7-1.tar.gz";
    name = "4.3.7-1.tar.gz";
    sha256 = "5e4a9db9c7713480b5a03c80cad7532b46566e2b9016effef5f1ebc8d9d27d62";
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
