
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-pybind11-catkin";
  version = "2.4.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wxmerkt";
        repo = "pybind11_catkin-release";
        rev = "release/melodic/pybind11_catkin/2.4.3-1";
        sha256 = "sha256-GmB8ippoT8In2jceuOj8QpdWfNlW1UyM7RRJ015ZylQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen python pythonPackages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pybind11 package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
