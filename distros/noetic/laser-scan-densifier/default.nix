
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-laser-scan-densifier";
  version = "0.7.14-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_driver-release";
        rev = "release/noetic/laser_scan_densifier/0.7.14-1";
        sha256 = "sha256-fKe8RKibsC1tfEqpQxFVXsKs5NgSMrM45rTH0eQFQqY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_densifier takes in a LaserScan message and densifies it.
    Node is inspired by laser_scan_sparsifier (http://wiki.ros.org/laser_scan_sparsifier).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
