
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-iron-zstd-point-cloud-transport";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/iron/zstd_point_cloud_transport/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "c81d5e3522c929010d7ac658e93634b2d00b85d907e986fdb943c5b83051c7d5";
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
