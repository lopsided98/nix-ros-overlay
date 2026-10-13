
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rcl-interfaces, rclcpp, rclcpp-components, rcpputils, sensor-msgs, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport";
  version = "6.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport/6.0.4-1.tar.gz";
    name = "6.0.4-1.tar.gz";
    sha256 = "32405d8180dda2e15a366b30e55c90a9268b30c34c526ff70feeb955e0c44e95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-ros-core message-filters pluginlib rcl-interfaces rclcpp rclcpp-components rcpputils sensor-msgs tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ament-cmake-ros-core ];

  meta = {
    description = "Support for transporting PointCloud2 messages in compressed format and plugin interface for implementing additional PointCloud2 transports.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
