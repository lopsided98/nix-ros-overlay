
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, velodyne-gazebo-plugins, catkin, velodyne-description }:
buildRosPackage {
  pname = "ros-melodic-velodyne-simulator";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/melodic/velodyne_simulator/1.0.9-0.tar.gz;
    sha256 = "d6cbbbf0f73845a641801a326ecb69780982d3e6523330cb0358093e16b9ea4d";
  };

  propagatedBuildInputs = [ velodyne-gazebo-plugins velodyne-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage allowing easy installation of Velodyne simulation components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
