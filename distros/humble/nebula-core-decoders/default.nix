
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, eigen, libpng, nebula-core-common, pngpp, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-core-decoders";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_core_decoders/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c3eeb37786ac950e01bdf064747df672323626e1f47ecd845e07afd2b86273a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ boost eigen libpng nebula-core-common pngpp sensor-msgs ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Decoders Base Library";
    license = with lib.licenses; [ asl20 ];
  };
}
