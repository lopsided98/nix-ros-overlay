
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch, launch-testing, launch-testing-ros, pythonPackages, rclcpp, rclcpp-lifecycle, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-iron-diagnostic-updater";
  version = "4.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/iron/diagnostic_updater/4.1.0-2.tar.gz";
    name = "4.1.0-2.tar.gz";
    sha256 = "2f4af3d0c618102980d7b1418e46bf615f2b4f02903dbeb6c65ca87ebd0ed065";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ros pythonPackages.pytest rclcpp-lifecycle ];
  propagatedBuildInputs = [ diagnostic-msgs rclcpp rclpy std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "diagnostic_updater contains tools for easily updating diagnostics. it is commonly used in device drivers to keep track of the status of output topics, device status, etc.";
    license = with lib.licenses; [ bsd3 ];
  };
}
