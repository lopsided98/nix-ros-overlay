
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-ros, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rclcpp, rclcpp-components, rcpputils, rmw, sensor-msgs, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "567cc8f715f79aba1728228dd94f6cf81a52a4ba165725c35fac88dc84d6f9c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ message-filters pluginlib rclcpp rclcpp-components rcpputils rmw sensor-msgs tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "Support for transporting PointCloud2 messages in compressed format and plugin interface for implementing additional PointCloud2 transports.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
