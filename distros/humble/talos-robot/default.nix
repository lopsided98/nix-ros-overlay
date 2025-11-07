
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, talos-bringup, talos-controller-configuration, talos-description, talos-description-calibration }:
buildRosPackage {
  pname = "ros-humble-talos-robot";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_robot/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "24b111f018e3fafdf81cece9dd90a5b794382ae90263370c6e3515f0bef49fa6";
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
