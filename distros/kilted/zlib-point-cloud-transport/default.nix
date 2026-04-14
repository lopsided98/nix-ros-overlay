
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zlib }:
buildRosPackage {
  pname = "ros-kilted-zlib-point-cloud-transport";
  version = "5.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/kilted/zlib_point_cloud_transport/5.0.5-2.tar.gz";
    name = "5.0.5-2.tar.gz";
    sha256 = "d66db205bbcb2e762f0f88ff2b671b84812c7a4ca544feff1460ba30b19c4ab1";
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
