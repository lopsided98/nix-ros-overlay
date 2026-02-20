
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-core-api, autoware-core-control, autoware-core-localization, autoware-core-map, autoware-core-perception, autoware-core-planning, autoware-core-sensing, autoware-core-vehicle, autoware-global-parameter-loader, autoware-lint-common, rviz2 }:
buildRosPackage {
  pname = "ros-humble-autoware-core";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "d3de6b24568a9a75f90f1d2406a6a4aaa4c791321b1eb8d6a715a53d5f100fc8";
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
