
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, draco, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rcpputils, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-draco-point-cloud-transport";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/rolling/draco_point_cloud_transport/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "bae25ba8ba1fef60fd95507613eef38dbb65f25a7bd226e477d18e4bf0d38e24";
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
