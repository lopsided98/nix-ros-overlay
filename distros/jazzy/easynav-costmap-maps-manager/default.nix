
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, graphicsmagick, nav-msgs, pluginlib, std-srvs, tf2-ros, yaets, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-easynav-costmap-maps-manager";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_costmap_maps_manager/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "4a4520ec1e13c663a1f9327619ee8a626ed181d70962fff51288e762d653af28";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common easynav-core easynav-costmap-common graphicsmagick nav-msgs pluginlib std-srvs tf2-ros yaets yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple MapsManager package.";
    license = with lib.licenses; [ asl20 ];
  };
}
