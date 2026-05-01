
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-lyrical-zstd-point-cloud-transport";
  version = "6.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/lyrical/zstd_point_cloud_transport/6.1.0-3.tar.gz";
    name = "6.1.0-3.tar.gz";
    sha256 = "caa8cae7dcab0c29e2b676e259edd9fceabff61204d0de224c46dcfc3dc73f88";
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
