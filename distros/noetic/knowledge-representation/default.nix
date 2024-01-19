
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libpqxx, postgresql, python3, python3Packages, roslint, rosunit }:
buildRosPackage {
  pname = "ros-noetic-knowledge-representation";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/utexas-bwi-gbp/knowledge_representation-release/archive/release/noetic/knowledge_representation/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "fad16bb2d5c4b082e11b1969accdf506789cbc771b76fae614f0fbbf5a2b40c1";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools roslint ];
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
