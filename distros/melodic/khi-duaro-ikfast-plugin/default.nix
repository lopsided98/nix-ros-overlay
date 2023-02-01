
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, liblapack, moveit-core, pluginlib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-khi-duaro-ikfast-plugin";
  version = "1.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Kawasaki-Robotics";
        repo = "khi_robot-release";
        rev = "release/melodic/khi_duaro_ikfast_plugin/1.2.0-1";
        sha256 = "sha256-R5jeevyIsFuxUmmnNTDS2FwkiCw4tMQkqCxdFZpWPFY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_ikfast_plugin package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
