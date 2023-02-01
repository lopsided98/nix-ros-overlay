
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, python3Packages, pythonPackages, rospy, sensor-msgs, std-msgs, tf2-kdl }:
buildRosPackage {
  pname = "ros-noetic-massrobotics-amr-sender";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "inorbit-ai";
        repo = "ros_amr_interop-release";
        rev = "release/noetic/massrobotics_amr_sender/1.0.1-1";
        sha256 = "sha256-BSkPvfJhIPM4gnwZ3UA6ZaCngG0n7th6VilOI+TKh4w=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ python3Packages.jsonschema python3Packages.mock python3Packages.pep8 python3Packages.pytest-mock python3Packages.pyyaml pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs python3Packages.pykdl python3Packages.websockets rospy sensor-msgs std-msgs tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MassRobotics AMR Interop Sender'';
    license = with lib.licenses; [ "3-Clause-BSD-License" ];
  };
}
