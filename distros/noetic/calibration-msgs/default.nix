
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-calibration-msgs";
  version = "0.10.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "calibration-release";
        rev = "release/noetic/calibration_msgs/0.10.15-1";
        sha256 = "sha256-TJJfCZYOI84eDQWd3zHkeTouPRbozw2MN+ahDRVcvtc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages for storing calibration samples
     to be used in full robot calibration procedures. This package
     is still unstable. Expect the messages to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
