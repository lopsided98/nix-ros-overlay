
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, talos-bringup, talos-controller-configuration, talos-description, talos-description-calibration }:
buildRosPackage {
  pname = "ros-humble-talos-robot";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_robot/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "13bde116ae996a013144cb1cb53308b7c7c7a7b43a9ed5b9cb567a2d20c977c0";
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
