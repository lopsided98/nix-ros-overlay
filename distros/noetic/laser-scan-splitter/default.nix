
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-laser-scan-splitter";
  version = "0.3.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "scan_tools-release";
        rev = "release/noetic/laser_scan_splitter/0.3.3-1";
        sha256 = "sha256-f6tHTbi0RfnnhWtSJ9pHStElYS5HkBH/Csoz0BKs/2c=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_splitter takes in a LaserScan message and splits it into a number of other LaserScan messages. Each of the resulting laser scans can be assigned an arbitrary coordinate frame, and is published on a separate topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
