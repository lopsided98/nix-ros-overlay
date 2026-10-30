
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-sensors, eigen, geometry-msgs, graphicsmagick, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaets, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-easynav-navmap-maps-manager";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/humble/easynav_navmap_maps_manager/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "febffa48ba3e1ce2062b362f434f2259bb559cc3331eb00952d90f06c5f5123f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common easynav-core easynav-sensors eigen graphicsmagick nav-msgs navmap-core navmap-ros navmap-ros-interfaces pluginlib rclcpp rclcpp-lifecycle sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros yaets yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple MapsManager package.";
    license = with lib.licenses; [ asl20 ];
  };
}
