
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lcov, cppcheck, catkin, clang }:
buildRosPackage {
  pname = "ros-kinetic-rdl-cmake";
  version = "1.1.0";

  src = fetchurl {
    url = https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl_cmake/1.1.0-0;
    sha256 = "d7973d56abb99d31251154588af5694865301492b6eaf2fd743d8f9fda76cf3a";
  };

  checkInputs = [ lcov cppcheck clang ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_cmake package'';
    #license = lib.licenses.zlib;
  };
}
