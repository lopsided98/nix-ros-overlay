
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2, catkin, urdf, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-urdf-geometry-parser";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf_geometry_parser-release/archive/release/kinetic/urdf_geometry_parser/0.0.3-0.tar.gz;
    sha256 = "df59d7a59fda9b319985dc04e146a6dfad289c54bf8898b12a4988b2bd83835b";
  };

  propagatedBuildInputs = [ tf2 roscpp urdf ];
  nativeBuildInputs = [ tf2 catkin roscpp urdf ];

  meta = {
    description = ''Extract geometry value of a vehicle from urdf'';
    #license = lib.licenses.BSD;
  };
}
