
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-dbw-ford-description";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford_description/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "32daa3b66ffbc26682cf4f3ee729249f1096c8e924e6fd465d1f0ae1c03a2ebc";
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
