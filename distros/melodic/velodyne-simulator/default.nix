
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, velodyne-description, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-velodyne-simulator";
  version = "1.0.12-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/melodic/velodyne_simulator/1.0.12-1.tar.gz";
    name = "1.0.12-1.tar.gz";
    sha256 = "1e62845d3fc696ffd25f6af53f806bd14ab76c7b7a700ba3d12625ba7a4323a7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ velodyne-description velodyne-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage allowing easy installation of Velodyne simulation components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
