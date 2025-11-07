
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, pal-urdf-utils, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description-calibration";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description_calibration/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "9e2511fe9921bbbaf91ec2dc86a772af609e0210ebfb02522de15a2bc4f23a70";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  propagatedBuildInputs = [ pal-urdf-utils xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "This package contains the description of the hand-eye calibration of the TALOS robot.  The files in this package are used also from the talos_description package.";
    license = with lib.licenses; [ asl20 ];
  };
}
