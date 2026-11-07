
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rcl-interfaces, rclcpp, rclcpp-components, rcpputils, sensor-msgs, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport";
  version = "6.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport/6.0.5-1.tar.gz";
    name = "6.0.5-1.tar.gz";
    sha256 = "271c1d20386a4698ddf7df4e13dc96769470ad5a69d0565ed9f61e65b9530c4b";
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
