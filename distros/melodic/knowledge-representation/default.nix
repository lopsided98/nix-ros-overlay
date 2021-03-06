
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libpqxx, postgresql, python, pythonPackages, roslint, rosunit }:
buildRosPackage {
  pname = "ros-melodic-knowledge-representation";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/utexas-bwi-gbp/knowledge_representation-release/archive/release/melodic/knowledge_representation/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "37052ecadaa9888e16018694a23ba7e0dc36a96d6273097d3b6005fb27df2a90";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
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
