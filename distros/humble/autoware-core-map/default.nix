
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lanelet2-map-visualizer, autoware-lint-common, autoware-map-loader, autoware-map-projection-loader }:
buildRosPackage {
  pname = "ros-humble-autoware-core-map";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_map/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "db9b2f66729fd4289a9951f75c55544c0affbb6beac918d09f998c66854ca506";
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
