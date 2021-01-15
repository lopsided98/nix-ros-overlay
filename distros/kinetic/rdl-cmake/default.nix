
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, cppcheck, lcov }:
buildRosPackage {
  pname = "ros-kinetic-rdl-cmake";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl_cmake/1.1.0-0";
    name = "archive.tar.gz";
    sha256 = "d7973d56abb99d31251154588af5694865301492b6eaf2fd743d8f9fda76cf3a";
  };

  buildType = "catkin";
  checkInputs = [ clang cppcheck lcov ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_cmake package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
