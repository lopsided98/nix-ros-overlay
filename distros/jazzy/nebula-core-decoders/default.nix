
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, eigen, libpng, nebula-core-common, pngpp, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nebula-core-decoders";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_core_decoders/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "705c91d79399a8ccd44165828973687de4483f5b2ccb149ca6fa2ab059d708b1";
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
