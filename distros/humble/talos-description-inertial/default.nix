
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description-inertial";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description_inertial/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "bfcf640ce1570bc91d1c2d981bd111ad67913f4ca19b1bb7202349484d912625";
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
