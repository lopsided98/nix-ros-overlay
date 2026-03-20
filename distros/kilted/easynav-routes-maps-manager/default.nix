
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, geometry-msgs, interactive-markers, nav-msgs, pluginlib, std-srvs, tf2-ros, visualization-msgs, yaets, yaml-cpp }:
buildRosPackage {
  pname = "ros-kilted-easynav-routes-maps-manager";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_routes_maps_manager/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "e6f571107f1926f5c0c165eaa828ebe3f9062c41a03d6f6edd297826d0aa293d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common easynav-core easynav-costmap-common geometry-msgs interactive-markers nav-msgs pluginlib std-srvs tf2-ros visualization-msgs yaets yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Routes MapsManager package.";
    license = with lib.licenses; [ asl20 ];
  };
}
