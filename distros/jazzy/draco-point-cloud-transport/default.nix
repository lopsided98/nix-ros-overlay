
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, draco, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rcpputils, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-draco-point-cloud-transport";
  version = "3.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/jazzy/draco_point_cloud_transport/3.0.3-3.tar.gz";
    name = "3.0.3-3.tar.gz";
    sha256 = "12c0f14fbf413383fc147e41a77131b5f1da8ce94be5d484881bf8ee712089e9";
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
