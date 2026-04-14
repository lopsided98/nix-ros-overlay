
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-jazzy-zstd-point-cloud-transport";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/jazzy/zstd_point_cloud_transport/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "c07f8314205ccdf384b2d2dfcecc3abf66a84e57d4fd589e0ac1165416c54ada";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib point-cloud-interfaces point-cloud-transport rclcpp zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "zstd_point_cloud_transport provides a plugin to point_cloud_transport for sending point clouds
    encoded with lib";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
