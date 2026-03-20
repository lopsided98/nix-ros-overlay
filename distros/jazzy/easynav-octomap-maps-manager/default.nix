
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, graphicsmagick, nav-msgs, octomap-msgs, octomap-ros, pcl-conversions, pcl-ros, pluginlib, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaets, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-easynav-octomap-maps-manager";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_octomap_maps_manager/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "771c5d1cb5dac3cf8c04328b2a014909f02d32f810dc4e13b8f0e326171fb998";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common easynav-core graphicsmagick nav-msgs octomap-msgs octomap-ros pcl-conversions pcl-ros pluginlib sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros yaets yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple MapsManager package.";
    license = with lib.licenses; [ asl20 ];
  };
}
