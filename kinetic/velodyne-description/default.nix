
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-description";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/kinetic/velodyne_description/1.0.9-0.tar.gz;
    sha256 = "349c59a6afaddf330720d754ffd6190e06ddcdcc94abb7ddec43cb832cb34540";
  };

  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing Velodyne laser scanners.'';
    #license = lib.licenses.BSD;
  };
}
