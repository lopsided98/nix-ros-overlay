
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zlib }:
buildRosPackage {
  pname = "ros-rolling-zlib-point-cloud-transport";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/rolling/zlib_point_cloud_transport/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "ab8052134cde0c30b8cf4ba22bab51f8dfeb570b28ed27ee9f6dd39adce9717a";
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
