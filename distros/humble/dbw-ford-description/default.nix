
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-dbw-ford-description";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford_description/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "7bbf59bd586b2aad4df61086b8ec6cc6982954d9f6053cdd065003ec682ac08b";
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
