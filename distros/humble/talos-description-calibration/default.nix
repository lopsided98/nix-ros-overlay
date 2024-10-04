
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description-calibration";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description_calibration/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "229e1719fd8bee043663ab3e22bbf6a2a70e34357674323461d0ed4cd46d7c2d";
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
