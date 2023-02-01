
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-msgs, catkin, roscpp, roscpp-serialization, sensor-msgs, settlerlib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dense-laser-assembler";
  version = "1.0.11-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "UNR-RoboticsResearchLab";
        repo = "pr2_calibration-release";
        rev = "release/melodic/dense_laser_assembler/1.0.11-3";
        sha256 = "sha256-iOEfcBv0S4NAGJFf4UtLdT0uwbmUzShYkxYXRehQNFU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ calibration-msgs roscpp roscpp-serialization sensor-msgs settlerlib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stores streaming data from a laser sensor in a
    dense representation. This allows the user to do 'image-like'
    processing on the data, and can also be used for very fast approx
    neighborhood searches.  This package is still experimental and unstable.
    Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
