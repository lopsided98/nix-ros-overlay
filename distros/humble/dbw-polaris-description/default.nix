
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-dbw-polaris-description";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_polaris_description/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "79c187e96b509fefa1787a9f25ddc756cfafc90de881d0cb533238086de911b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rviz2 ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF and meshes describing Polaris vehicles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
