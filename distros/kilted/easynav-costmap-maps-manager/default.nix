
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, easynav-sensors, eigen, graphicsmagick, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, std-srvs, tf2, tf2-ros, yaets, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-easynav-costmap-maps-manager";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_costmap_maps_manager/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "f51d4efa1f39ff65b60356e95297a3f00e7e1a5c7d44fcc0a9437fdec8212d25";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common easynav-core easynav-costmap-common easynav-sensors eigen graphicsmagick nav-msgs pluginlib rclcpp rclcpp-lifecycle std-srvs tf2 tf2-ros yaets yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple MapsManager package.";
    license = with lib.licenses; [ asl20 ];
  };
}
