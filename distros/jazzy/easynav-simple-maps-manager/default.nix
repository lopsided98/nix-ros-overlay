
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, nav-msgs, pluginlib, std-srvs, tf2-ros, yaets }:
buildRosPackage {
  pname = "ros-jazzy-easynav-simple-maps-manager";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_simple_maps_manager/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "df5d9d33708255cf3b0c401a8b35b976951dc606e1fbd1813bcc304b3cf805c0";
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
