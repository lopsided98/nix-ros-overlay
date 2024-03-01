
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-iron-zstd-point-cloud-transport";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/iron/zstd_point_cloud_transport/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "ff650b495d61a46f9e6f3fe7dd564afb9f3ab6f5cfaa9d276190f75790deec9a";
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
