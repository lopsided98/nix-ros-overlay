
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, graphicsmagick, nav-msgs, octomap-msgs, octomap-ros, pcl-conversions, pcl-ros, pluginlib, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaets, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-easynav-octomap-maps-manager";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_octomap_maps_manager/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "13ff2bed2ed337b2b754c4882ebc0f68f79b10268e7d2bcf0a76bff35015aec5";
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
