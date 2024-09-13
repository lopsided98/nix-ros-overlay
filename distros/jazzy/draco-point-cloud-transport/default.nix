
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, draco, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rcpputils, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-draco-point-cloud-transport";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/jazzy/draco_point_cloud_transport/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "031d526ff6f745d26e3dd66eddfe9d270c55b0e91e2292786a8625999604ad46";
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
