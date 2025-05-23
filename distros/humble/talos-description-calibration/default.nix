
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description-calibration";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description_calibration/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "0cba00b93bbf8a79037ab965350149b37c68cd3f5b5d121999c4d0ec1ea87325";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "This package contains the description of the hand-eye calibration of the TALOS robot.  The files in this package are used also from the talos_description package.";
    license = with lib.licenses; [ asl20 ];
  };
}
