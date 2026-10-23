
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, eigen, libpng, nebula-core-common, pngpp, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-core-decoders";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_core_decoders/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "5a242723079e21bcccaca08cf854e47d0e2570351aa5ecfc6bed08b1454eb4fb";
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
