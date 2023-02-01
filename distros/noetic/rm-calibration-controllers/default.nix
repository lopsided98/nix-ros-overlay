
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, rm-common, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rm-calibration-controllers";
  version = "0.1.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rm-controls";
        repo = "rm_controllers-release";
        rev = "release/noetic/rm_calibration_controllers/0.1.7-1";
        sha256 = "sha256-Om/m3MON3WpO1mdayXD+e99ypi87QKpoZwJP/H2+LXo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ effort-controllers rm-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Gimbal controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
