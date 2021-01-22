
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, velodyne-description, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-simulator";
  version = "1.0.9";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/kinetic/velodyne_simulator/1.0.9-0.tar.gz";
    name = "1.0.9-0.tar.gz";
    sha256 = "38e690481373304d2dba12846937e581f1121c46199ebdfb1f87020b931e7982";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ velodyne-description velodyne-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage allowing easy installation of Velodyne simulation components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
