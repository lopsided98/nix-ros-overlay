
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description-inertial";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description_inertial/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "38a252d540f814f73d0091fe51c4d83d6881faa3a8670992a05780187e3d53cd";
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
