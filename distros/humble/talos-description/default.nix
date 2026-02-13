
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-urdf-utils, talos-controller-configuration, talos-description-calibration, talos-description-inertial, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description";
  version = "2.10.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description/2.10.3-1.tar.gz";
    name = "2.10.3-1.tar.gz";
    sha256 = "a28cb874e15ce760c4665a95123eed2bcd3f5bd755c440eeb2e2eae35a702d13";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ launch launch-pal launch-param-builder launch-ros pal-urdf-utils talos-controller-configuration talos-description-calibration talos-description-inertial xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The talos_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
