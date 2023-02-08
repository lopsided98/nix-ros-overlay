
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, pluginlib-tutorials, python3Packages, ros-introspection, roslint, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-roscompile";
  version = "1.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wu-robotics";
        repo = "roscompile-release";
        rev = "release/noetic/roscompile/1.2.1-1";
        sha256 = "sha256-ByXxHE2jb+wWplB1Qo+vRu2V/NUnU2FH/sejPcjtEp0=";
      };

  buildType = "catkin";
  buildInputs = [ python3Packages.setuptools ];
  checkInputs = [ geometry-msgs pluginlib pluginlib-tutorials roslint stereo-msgs tf ];
  propagatedBuildInputs = [ catkin python3Packages.click python3Packages.pyyaml python3Packages.rospkg ros-introspection ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The roscompile package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
