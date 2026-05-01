
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, draco, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rcpputils, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-draco-point-cloud-transport";
  version = "6.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/lyrical/draco_point_cloud_transport/6.1.0-3.tar.gz";
    name = "6.1.0-3.tar.gz";
    sha256 = "2cd38ffe7b0ec88839e2266ae18e09cafb7beb7f0a3165c8c29f2156d81c7d1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ draco pluginlib point-cloud-interfaces point-cloud-transport rclcpp rcpputils sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "draco_point_cloud_transport provides a plugin to point_cloud_transport for sending point clouds
    encoded with KD tree compression.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
