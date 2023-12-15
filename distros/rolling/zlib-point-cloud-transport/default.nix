
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zlib }:
buildRosPackage {
  pname = "ros-rolling-zlib-point-cloud-transport";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/rolling/zlib_point_cloud_transport/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "666444d708b9b634abecbfa18d1308283eb6b0ff76cdf7a4ae2cc16de55f7bdf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib point-cloud-interfaces point-cloud-transport rclcpp zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''zlib_point_cloud_transport provides a plugin to point_cloud_transport for sending point clouds
    encoded with zlib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
