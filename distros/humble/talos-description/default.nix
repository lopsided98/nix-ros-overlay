
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, talos-controller-configuration, talos-description-calibration, talos-description-inertial, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "3278b50c99b73c3a263bdfd999c7fa448c4b7c04e1290cd4a33bc66fdac5d3db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ launch launch-pal launch-param-builder launch-ros talos-controller-configuration talos-description-calibration talos-description-inertial xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The talos_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
