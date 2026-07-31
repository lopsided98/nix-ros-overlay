
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, ament-index-python, class-loader, pluginlib, python3, python3Packages, rclcpp, rclcpp-action, rclpy, tinyxml2-vendor, yasmin, yasmin-msgs, yasmin-ros, yasmin-viewer }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-factory";
  version = "6.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_factory/6.1.0-3.tar.gz";
    name = "6.1.0-3.tar.gz";
    sha256 = "1a2e944cce2b5a28f0fb7b86b8c79827961f636ab5701ffa984c9ee35a38cc9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ action-msgs ament-cmake-gtest ament-cmake-pytest ament-index-python ];
  propagatedBuildInputs = [ ament-index-cpp class-loader pluginlib python3 python3Packages.lxml python3Packages.pybind11 rclcpp rclcpp-action rclpy tinyxml2-vendor yasmin yasmin-msgs yasmin-ros yasmin-viewer ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN factory to create FSMs from XML files";
    license = with lib.licenses; [ asl20 ];
  };
}
