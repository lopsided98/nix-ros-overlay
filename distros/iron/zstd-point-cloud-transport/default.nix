
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-iron-zstd-point-cloud-transport";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/iron/zstd_point_cloud_transport/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "9d0f6d22a840c638be548a585c3960d61e6585a3a699caeb9b9487a35fcc2c4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib point-cloud-interfaces point-cloud-transport rclcpp zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''zstd_point_cloud_transport provides a plugin to point_cloud_transport for sending point clouds
    encoded with lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
