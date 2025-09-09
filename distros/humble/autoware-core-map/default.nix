
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lanelet2-map-visualizer, autoware-lint-common, autoware-map-loader, autoware-map-projection-loader }:
buildRosPackage {
  pname = "ros-humble-autoware-core-map";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_map/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "f4b7d943ae42b4ea249da82209c8ede687a67beda18b30ea27a754c1e60b831b";
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
