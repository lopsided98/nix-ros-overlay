
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rclcpp, rclcpp-components, rcpputils, rmw, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-point-cloud-transport";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/jazzy/point_cloud_transport/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "9f7341b334abc32744b9036ce4f1e05efcf7f97dee2b7d9a21dffcdb46c486c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ message-filters pluginlib rclcpp rclcpp-components rcpputils rmw sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Support for transporting PointCloud2 messages in compressed format and plugin interface for implementing additional PointCloud2 transports.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
