
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules }:
buildRosPackage {
  pname = "ros-melodic-libmodbus";
  version = "0.8.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "KITrobotics";
        repo = "ipr_extern-release";
        rev = "release/melodic/libmodbus/0.8.8-1";
        sha256 = "sha256-1dYHVupE6d+sHH+Do8rTZ5jg8O4dhH+5Ci7yJ0F8VJs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iirob_filters package implements following filters:
      1) Low-Pass
      2) Moving Mean
      3) Gravity Compensation (used for force-torque sensors)
      4) Threshold Filter'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
