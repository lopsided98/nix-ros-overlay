
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, genpy, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genmypy";
  version = "0.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rospypi";
        repo = "genmypy-release";
        rev = "release/melodic/genmypy/0.3.1-1";
        sha256 = "sha256-hf/egLXmmmwG/ST3AlI7ljjfjFcVTtTcGeRP2FiLBQA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ genmsg genpy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python stub generator from genmsg specs'';
    license = with lib.licenses; [ asl20 ];
  };
}
