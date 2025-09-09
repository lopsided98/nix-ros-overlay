
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, depthimage-to-laserscan, geometry-msgs, nav-msgs, pluginlib, pointcloud-to-laserscan, rclcpp, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-map-server";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_map_server/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "5da2633f2c36fecd575da88d10ada7bb02de26725ad078aa310b2e89d8716fce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-msgs depthimage-to-laserscan geometry-msgs nav-msgs pluginlib pointcloud-to-laserscan rclcpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aerostack2 map server node for mapping the environment";
    license = with lib.licenses; [ bsd3 ];
  };
}
