
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libpqxx, postgresql, python3, python3Packages, roslint, rosunit }:
buildRosPackage {
  pname = "ros-noetic-knowledge-representation";
  version = "0.9.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "utexas-bwi-gbp";
        repo = "knowledge_representation-release";
        rev = "release/noetic/knowledge_representation/0.9.6-1";
        sha256 = "sha256-P/OLYmaKPV/J28yEO47TmnqgZilAvi7anGUTrZa++Dw=";
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
