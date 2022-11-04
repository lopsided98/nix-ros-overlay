
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libpqxx, postgresql, python, pythonPackages, roslint, rosunit }:
buildRosPackage {
  pname = "ros-melodic-knowledge-representation";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/utexas-bwi-gbp/knowledge_representation-release/archive/release/melodic/knowledge_representation/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "9d78c86fd031e08f16d5c2592b9f6d24a4d91f97a8c894752727c37ea292820d";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ boost libpqxx postgresql python pythonPackages.pillow ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''APIs for storing and querying information about the world.
    Provides C++ and Python API's to make getting facts in and out easy (while still exposing a full SQL interface).
        Supports PostgreSQL and MySQL backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
