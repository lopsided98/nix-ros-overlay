
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-velodyne-description";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/melodic/velodyne_description/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "111bc30a33cd409c18c0f1c32ff2a6c8be55d29d14907d5d7627e872c2ae0671";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
