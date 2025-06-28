
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rclcpp, rclcpp-components, rcpputils, rmw, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-point-cloud-transport";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/kilted/point_cloud_transport/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "317441b6634e9970607aea3042ef2cc09f84047d6894f87694eb2dd738c1e4d8";
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
