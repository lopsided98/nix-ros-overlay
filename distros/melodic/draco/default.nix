
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-draco";
  version = "1.3.6-r3";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/draco/-/archive/release/melodic/draco/1.3.6-3/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "8b081e5067c339a51f584f02546ca020f5ba988eaebb613e7113f88fd8ab9bbe";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Draco is a library for compressing and decompressing 3D geometric meshes and point clouds. It is intended to improve the storage and transmission of 3D graphics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
