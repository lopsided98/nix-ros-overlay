
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, ament-index-python, class-loader, pluginlib, python3, python3Packages, rclcpp, rclcpp-action, rclpy, tinyxml2-vendor, yasmin, yasmin-msgs, yasmin-ros, yasmin-viewer }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-factory";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_factory/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "728b9a690bf02a50048a48c4de135bee2026178c0cde0209c47621266814c6c3";
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
