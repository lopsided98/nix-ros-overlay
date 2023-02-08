
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libpqxx, postgresql, python, pythonPackages, roslint, rosunit }:
buildRosPackage {
  pname = "ros-melodic-knowledge-representation";
  version = "0.9.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "utexas-bwi-gbp";
        repo = "knowledge_representation-release";
        rev = "release/melodic/knowledge_representation/0.9.4-1";
        sha256 = "sha256-gnLg1NF27HVgu0h2vR88yG01B1RxwFzYu9GLoz6HHDM=";
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
