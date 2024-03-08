
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rclcpp, rclcpp-components, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport";
  version = "3.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport/3.0.4-2.tar.gz";
    name = "3.0.4-2.tar.gz";
    sha256 = "510b3ba529719d8a65b93e36a9d77c3a3fcccc2d3ab8b04fb018f800333c74c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ message-filters pluginlib rclcpp rclcpp-components rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Support for transporting PointCloud2 messages in compressed format and plugin interface for implementing additional PointCloud2 transports.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
