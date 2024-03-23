
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-dbw-ford-description";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford_description/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "4c2dff41a355d3fcccc2cccf8fe1bbdf783db3238a7f9a9984dcb264f769acb2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rviz2 ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and meshes describing the Lincoln MKZ.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
