
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-urdf-geometry-parser";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_geometry_parser-release/archive/release/kinetic/urdf_geometry_parser/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "703d4173ea509c526dcab333697720348c0f88f8dab626c70134b4931bcd74ef";
  };

  buildType = "catkin";
  checkInputs = [ rostest xacro ];
  propagatedBuildInputs = [ roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extract geometry value of a vehicle from urdf.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
