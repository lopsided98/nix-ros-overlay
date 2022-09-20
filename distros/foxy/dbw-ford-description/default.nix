
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-dbw-ford-description";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/foxy/dbw_ford_description/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "6db7ad2d53ed29158b5b108bc2770fa6ff21adc617626c3be6d799b3d4cbe745";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rviz2 ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF and meshes describing the Lincoln MKZ.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
