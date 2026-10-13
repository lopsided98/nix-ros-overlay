
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-sensors, easynav-simple-common, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, std-srvs, tf2-ros, yaets }:
buildRosPackage {
  pname = "ros-humble-easynav-simple-maps-manager";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/humble/easynav_simple_maps_manager/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "62a35d77f62a26dc518ff355cf917e7ffe608b5c1da668ee1f982e7d6542fa64";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common easynav-core easynav-sensors easynav-simple-common nav-msgs pluginlib rclcpp std-srvs tf2-ros yaets ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple MapsManager package.";
    license = with lib.licenses; [ asl20 ];
  };
}
