
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, tf2, urdf }:
buildRosPackage {
  pname = "ros-kinetic-urdf-geometry-parser";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_geometry_parser-release/archive/release/kinetic/urdf_geometry_parser/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "df59d7a59fda9b319985dc04e146a6dfad289c54bf8898b12a4988b2bd83835b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp tf2 urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extract geometry value of a vehicle from urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
