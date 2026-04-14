
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zlib }:
buildRosPackage {
  pname = "ros-humble-zlib-point-cloud-transport";
  version = "1.0.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/humble/zlib_point_cloud_transport/1.0.14-1.tar.gz";
    name = "1.0.14-1.tar.gz";
    sha256 = "2eb0132261996b289990a208b187d9fb3b7d2f3688c52cf3a14804410653c7a7";
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
