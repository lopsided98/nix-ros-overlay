
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-md49-serialport";
  version = "0.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Scheik";
        repo = "md49_base_controller-release";
        rev = "release/melodic/md49_serialport/0.1.4-1";
        sha256 = "sha256-I6/eAk0eDu8hJ672JB9L8dWxCP0RRHkUsQr6v1G4hhI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The md49_serialport package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
