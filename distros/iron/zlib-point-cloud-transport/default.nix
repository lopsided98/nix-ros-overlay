
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zlib }:
buildRosPackage {
  pname = "ros-iron-zlib-point-cloud-transport";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/iron/zlib_point_cloud_transport/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "3668dcb35b9082e55c91bcb6a761a7f3c87236fa5cf3f521e12bb711cde3fe44";
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
