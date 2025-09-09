
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, talos-bringup, talos-controller-configuration, talos-description, talos-description-calibration }:
buildRosPackage {
  pname = "ros-humble-talos-robot";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_robot/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "09e4adeb34dd6a488b2f9d9e433ac75aa5395b561cb765db9b7da7eb418456c7";
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
