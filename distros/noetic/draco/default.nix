
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-draco";
  version = "1.5.6-r3";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/draco/-/archive/release/noetic/draco/1.5.6-3/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "b24a7fdb60b49403965e313465f48e4b8a47a110b28561a44b709a255bdbea8a";
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
