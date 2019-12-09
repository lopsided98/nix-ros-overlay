
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, catkin, urdf }:
buildRosPackage {
  pname = "ros-melodic-velodyne-description";
  version = "1.0.9";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/melodic/velodyne_description/1.0.9-0.tar.gz";
    name = "1.0.9-0.tar.gz";
    sha256 = "3c21ef0d86e8d52e10b95d846d089c029d80b58f6f12b52bf19ed7f3a94c3094";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
