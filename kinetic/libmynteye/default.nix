
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-libmynteye";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/harjeb/libmynteye-release/archive/release/kinetic/libmynteye/0.1.3-0.tar.gz;
    sha256 = "d80fe8ef6765408447ec457fc22e3c84117b639eb592054b7d1ef7c95f796655";
  };

  nativeBuildInputs = [ catkin opencv3 ];

  meta = {
    description = ''The mynt eye sdk package'';
    #license = lib.licenses.Slightech License;
  };
}
