
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-core-api, autoware-core-control, autoware-core-localization, autoware-core-map, autoware-core-perception, autoware-core-planning, autoware-core-sensing, autoware-core-vehicle, autoware-global-parameter-loader, autoware-lint-common, rviz2 }:
buildRosPackage {
  pname = "ros-humble-autoware-core";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "68365ce7421c950e223ebda0e7228c0e36607e25f23f7d3de029536271e77a3d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-core-api autoware-core-control autoware-core-localization autoware-core-map autoware-core-perception autoware-core-planning autoware-core-sensing autoware-core-vehicle autoware-global-parameter-loader rviz2 ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core package";
    license = with lib.licenses; [ asl20 ];
  };
}
