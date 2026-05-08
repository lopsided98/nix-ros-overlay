
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-core-api, autoware-core-control, autoware-core-localization, autoware-core-map, autoware-core-perception, autoware-core-planning, autoware-core-sensing, autoware-core-vehicle, autoware-global-parameter-loader, autoware-lint-common, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-autoware-core";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_core/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "769c1f1f80d2d6eaf383a048bc73ba4050e14667d80bb79e23add31156e33ce6";
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
