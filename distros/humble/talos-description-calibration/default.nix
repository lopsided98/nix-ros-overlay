
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description-calibration";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description_calibration/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "e93d38e81b90175979023d98a9418a9ad87fcb7b83033464134976c197057fba";
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
