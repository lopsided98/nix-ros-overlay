
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-urdf-utils, talos-controller-configuration, talos-description-calibration, talos-description-inertial, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "78bef116ce2ebfa0ead92e68d55672f0c383a396ed99fafe21d04e2f7f8a35c5";
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
