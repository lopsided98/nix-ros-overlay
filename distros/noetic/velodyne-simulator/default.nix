
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, velodyne-description, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-noetic-velodyne-simulator";
  version = "1.0.13-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/noetic/velodyne_simulator/1.0.13-1.tar.gz";
    name = "1.0.13-1.tar.gz";
    sha256 = "351499b7b1b40189628a8b7083d2313a509127005c01a4396a3d1ea1f4599632";
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
