
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libpqxx, postgresql, python3, python3Packages, roslint, rosunit }:
buildRosPackage {
  pname = "ros-noetic-knowledge-representation";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/utexas-bwi-gbp/knowledge_representation-release/archive/release/noetic/knowledge_representation/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "3cdbf4f6a2964d8e9dd9e281936f812e4eee24c1936b3d62aa817f1389ef0e07";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ boost libpqxx postgresql python3 python3Packages.pillow ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''APIs for storing and querying information about the world.
    Provides C++ and Python API's to make getting facts in and out easy (while still exposing a full SQL interface).
        Supports PostgreSQL and MySQL backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
