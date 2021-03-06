
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-velodyne-description";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/noetic/velodyne_description/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "255d082bfdf62a6556c1405d9cc31bae5f1f0099cd497d64741716357881a420";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
