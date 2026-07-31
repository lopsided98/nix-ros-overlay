
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, easynav-sensors, eigen, graphicsmagick, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, std-srvs, tf2-ros, yaets, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-easynav-costmap-maps-manager";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/lyrical/easynav_costmap_maps_manager/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "08d4c483bacc550769a2f9295f9e7c55434b04ee99944a2ff1799489a1f9be81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common easynav-core easynav-costmap-common easynav-sensors eigen graphicsmagick nav-msgs pluginlib rclcpp rclcpp-lifecycle std-srvs tf2-ros yaets yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple MapsManager package.";
    license = with lib.licenses; [ asl20 ];
  };
}
