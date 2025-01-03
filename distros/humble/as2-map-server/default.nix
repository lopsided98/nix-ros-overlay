
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, geometry-msgs, nav-msgs, pluginlib, rclcpp, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-map-server";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_map_server/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "f8e6f913a1e92d6a92effb0dad39e5b29cc003da2b0f289af29b5d1d81b4440e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-msgs geometry-msgs nav-msgs pluginlib rclcpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aerostack2 map server node for mapping the environment";
    license = with lib.licenses; [ "BDS-3" ];
  };
}
