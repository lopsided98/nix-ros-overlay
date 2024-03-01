
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rclcpp, rclcpp-components, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "8a9c1e801f9e7b65da06c8fdbc3af9f694167f9138802463bdba1cc3fb413126";
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
