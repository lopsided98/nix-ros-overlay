
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zlib }:
buildRosPackage {
  pname = "ros-lyrical-zlib-point-cloud-transport";
  version = "6.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/lyrical/zlib_point_cloud_transport/6.1.0-3.tar.gz";
    name = "6.1.0-3.tar.gz";
    sha256 = "982599f79477edb01df0d4f5db6a95ba4361a08d1955422a93eb028640d2a5dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib point-cloud-interfaces point-cloud-transport rclcpp zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "zlib_point_cloud_transport provides a plugin to point_cloud_transport for sending point clouds
    encoded with zlib";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
