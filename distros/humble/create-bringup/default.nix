
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, create-description, create-driver, joy, joy-teleop, launch-xml }:
buildRosPackage {
  pname = "ros-humble-create-bringup";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/create_autonomy-release/archive/release/humble/create_bringup/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "07064fa1eff34a33127d6b0bdd0bb8929472591790221c5dc59fe53d3484392d";
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
