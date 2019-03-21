
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, poco, catkin, cmake, eigen }:
buildRosPackage {
  pname = "ros-kinetic-libfranka";
  version = "0.5.0-r1";

  src = fetchurl {
    url = https://github.com/frankaemika/libfranka-release/archive/release/kinetic/libfranka/0.5.0-1.tar.gz;
    sha256 = "61fe1d0c109317ec7114e7a4e38f4ecd6351aa1f6d1d1bb4606523091c1a386d";
  };

  propagatedBuildInputs = [ poco catkin ];
  nativeBuildInputs = [ poco cmake eigen ];

  meta = {
    description = ''libfranka is a C++ library for Franka Emika research robots'';
    #license = lib.licenses.Apache 2.0;
  };
}
