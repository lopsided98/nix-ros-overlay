
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, velodyne-description, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-velodyne-simulator";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/melodic/velodyne_simulator/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "665e8d0899eb6dbb9321ca9665e1406154db0fc7530bf17397d05af9c654d671";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ velodyne-description velodyne-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage allowing easy installation of Velodyne simulation components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
