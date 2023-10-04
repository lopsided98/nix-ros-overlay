
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-humble-zstd-point-cloud-transport";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/humble/zstd_point_cloud_transport/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "b012aece778044a901d0b7c4bc6fbffa5aa41ce6d76977def04de0aabb2f88de";
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
