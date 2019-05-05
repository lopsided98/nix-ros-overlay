
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-lunar-velodyne-description";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/lunar/velodyne_description/1.0.9-0.tar.gz;
    sha256 = "e54397f1d9a26a7786730a4f51b811799244053d7e8f89f945ac63a47ce98d87";
  };

  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
