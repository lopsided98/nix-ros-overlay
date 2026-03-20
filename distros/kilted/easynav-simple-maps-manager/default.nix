
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, nav-msgs, pluginlib, std-srvs, tf2-ros, yaets }:
buildRosPackage {
  pname = "ros-kilted-easynav-simple-maps-manager";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_simple_maps_manager/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "8196b67473e79d86e28f3fb51876a3d2d86e2c6d48750aa8ace26ccd8c5edff2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common easynav-core easynav-simple-common nav-msgs pluginlib std-srvs tf2-ros yaets ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple MapsManager package.";
    license = with lib.licenses; [ asl20 ];
  };
}
