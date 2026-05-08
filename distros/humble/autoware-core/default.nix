
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-core-api, autoware-core-control, autoware-core-localization, autoware-core-map, autoware-core-perception, autoware-core-planning, autoware-core-sensing, autoware-core-vehicle, autoware-global-parameter-loader, autoware-lint-common, rviz2 }:
buildRosPackage {
  pname = "ros-humble-autoware-core";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "7b2729999eaff38d99fa57e7a5f69be979ba7851f3e060cb0c69db371c1ae894";
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
