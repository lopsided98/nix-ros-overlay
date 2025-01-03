
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-dbw-fca-description";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_fca_description/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "83bd9974be261c55b9b9eab2f9202feed54d7b76ce3643270c5cf9bd1e665c7d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rviz2 ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and meshes describing the Chrysler Pacifica.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
