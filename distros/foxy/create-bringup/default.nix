
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, create-description, create-driver, joy, joy-teleop, launch-xml }:
buildRosPackage {
  pname = "ros-foxy-create-bringup";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/create_autonomy-release/archive/release/foxy/create_bringup/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "8bc46b135da2f2ad0b96eba3d8f0c67c48dcc63191dcf97486529b2eccef652e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ create-description create-driver joy joy-teleop launch-xml ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch and configuration files for common accessories when working with Create/Roomba platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
