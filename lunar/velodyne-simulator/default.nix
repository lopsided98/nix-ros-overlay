
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, velodyne-gazebo-plugins, catkin, velodyne-description }:
buildRosPackage {
  pname = "ros-lunar-velodyne-simulator";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/lunar/velodyne_simulator/1.0.9-0.tar.gz;
    sha256 = "2b8e3e46d1f6f0c02a3c1186600b54d24b93a080b2b4124cb0a0286266a08f28";
  };

  propagatedBuildInputs = [ velodyne-gazebo-plugins velodyne-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage allowing easy installation of Velodyne simulation components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
