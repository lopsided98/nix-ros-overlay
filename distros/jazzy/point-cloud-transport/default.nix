
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-ros, ament-lint-auto, ament-lint-common, message-filters, pluginlib, rclcpp, rclcpp-components, rcpputils, rmw, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-point-cloud-transport";
  version = "4.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/jazzy/point_cloud_transport/4.0.8-1.tar.gz";
    name = "4.0.8-1.tar.gz";
    sha256 = "6ad947b660f94c645763b6cdd0a6f922f84e1cf59b5027c715502260d40e529b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ message-filters pluginlib rclcpp rclcpp-components rcpputils rmw sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "Support for transporting PointCloud2 messages in compressed format and plugin interface for implementing additional PointCloud2 transports.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
