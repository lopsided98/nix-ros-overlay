
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, velodyne-description, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-noetic-velodyne-simulator";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/noetic/velodyne_simulator/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "34810fce2fce720cad0500c5fdd58403e9774cbbbb04520cabb886029b20e035";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ velodyne-description velodyne-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage allowing easy installation of Velodyne simulation components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
