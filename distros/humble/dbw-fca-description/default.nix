
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-dbw-fca-description";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_fca_description/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "04bc168ad69f14482530926af9f76815a836c00218452b92cef76ba0438ffd29";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rviz2 ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF and meshes describing the Chrysler Pacifica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
