
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, easynav-sensors, eigen, graphicsmagick, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, std-srvs, tf2, tf2-ros, yaets, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-easynav-costmap-maps-manager";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/lyrical/easynav_costmap_maps_manager/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "84595d41d7523eececafa4a279263c2d32431181c62751fdda6eb677756fb128";
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
