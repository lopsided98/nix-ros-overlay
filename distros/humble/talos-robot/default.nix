
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, talos-bringup, talos-controller-configuration, talos-description, talos-description-calibration }:
buildRosPackage {
  pname = "ros-humble-talos-robot";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_robot/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "5d8af89dbcf1208d3e3174d4d30b4f4f0b3494dd953409e63a41042c67d2091a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ talos-bringup talos-controller-configuration talos-description talos-description-calibration ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Description and launch files for the TOR robot";
    license = with lib.licenses; [ asl20 ];
  };
}
