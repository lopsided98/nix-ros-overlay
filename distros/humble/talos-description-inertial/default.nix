
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description-inertial";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description_inertial/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "e7424a690af4d20aa02377436d7de837a68d86c98b2f56a1373c0cdf0ad1e771";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "Inertial parameters of talos";
    license = with lib.licenses; [ asl20 ];
  };
}
