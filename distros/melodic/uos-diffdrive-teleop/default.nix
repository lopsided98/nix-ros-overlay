
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, ps3joy, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-uos-diffdrive-teleop";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uos-gbp";
        repo = "uos-tools";
        rev = "release/melodic/uos_diffdrive_teleop/1.0.1-1";
        sha256 = "sha256-AAqcaABGMJxmizt9vR7HhYEbBlzRCcOACiXMA45FatM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs ps3joy roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uos_diffdrive_teleop'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
