
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, draco, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, rcpputils, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-draco-point-cloud-transport";
  version = "5.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/kilted/draco_point_cloud_transport/5.0.4-1.tar.gz";
    name = "5.0.4-1.tar.gz";
    sha256 = "a771eb8832614b585c3aa6e8c7856b3a624c2d3f32bc9e93d2deec73bb1a0008";
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
