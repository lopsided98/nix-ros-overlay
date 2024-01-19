
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-baldor";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/crigroup/baldor-release/archive/release/noetic/baldor/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "8972681a0bed3dd77a9ec679b4d7b22a957ab14eb9e62e1acbe29a343b8ed35d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The baldor package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
