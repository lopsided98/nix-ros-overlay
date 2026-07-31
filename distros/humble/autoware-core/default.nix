
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-core-api, autoware-core-control, autoware-core-localization, autoware-core-map, autoware-core-perception, autoware-core-planning, autoware-core-sensing, autoware-core-vehicle, autoware-global-parameter-loader, autoware-lint-common, rviz2 }:
buildRosPackage {
  pname = "ros-humble-autoware-core";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "1f38495767c9300aaffbe785755a7a92a181494472f31e8a9c1872c0b905ea30";
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
