
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-rolling-zstd-point-cloud-transport";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/rolling/zstd_point_cloud_transport/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "a7e214a4ef407249ea3deb782288e160da38bd1e4ae3713b4a83a2ce37d3d0d0";
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
