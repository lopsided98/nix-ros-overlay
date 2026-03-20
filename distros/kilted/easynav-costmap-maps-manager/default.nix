
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, graphicsmagick, nav-msgs, pluginlib, std-srvs, tf2-ros, yaets, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-easynav-costmap-maps-manager";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_costmap_maps_manager/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "20d87174f06f313ccdaaa6a3b9ac0025dff6e3c7c3374dd0784e07081b82e79b";
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
