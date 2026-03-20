
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, geometry-msgs, interactive-markers, nav-msgs, pluginlib, std-srvs, tf2-ros, visualization-msgs, yaets, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-easynav-routes-maps-manager";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_routes_maps_manager/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "081d5c1bc05595f4632ab78d25f4057caf852b6ffa80dd482e0a4b08ad51e003";
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
