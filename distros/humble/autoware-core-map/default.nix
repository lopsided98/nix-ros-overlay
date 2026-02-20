
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lanelet2-map-visualizer, autoware-lint-common, autoware-map-loader, autoware-map-projection-loader }:
buildRosPackage {
  pname = "ros-humble-autoware-core-map";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_map/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "fbd19e99d3f5571ff348071f7c423e2e95a35a15d622f28eb2c14060c363a1b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-lanelet2-map-visualizer autoware-map-loader autoware-map-projection-loader ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_map package";
    license = with lib.licenses; [ asl20 ];
  };
}
