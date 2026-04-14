
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-humble-zstd-point-cloud-transport";
  version = "1.0.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/humble/zstd_point_cloud_transport/1.0.14-1.tar.gz";
    name = "1.0.14-1.tar.gz";
    sha256 = "c808a86d0ffc63b769a6d9341f239c84dc8d48df672c4d34719c599f2ffbde7f";
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
