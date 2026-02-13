
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, talos-bringup, talos-controller-configuration, talos-description, talos-description-calibration }:
buildRosPackage {
  pname = "ros-humble-talos-robot";
  version = "2.10.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_robot/2.10.3-1.tar.gz";
    name = "2.10.3-1.tar.gz";
    sha256 = "fb1be6f6cf622510c2e05adbd59629a2a7aed96e3cc1a74806fd3856df61fde2";
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
