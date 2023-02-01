
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gpio-controller, mimic-joint-controller, rm-calibration-controllers, rm-chassis-controllers, rm-gimbal-controllers, rm-orientation-controller, rm-shooter-controllers, robot-state-controller, tof-radar-controller }:
buildRosPackage {
  pname = "ros-noetic-rm-controllers";
  version = "0.1.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rm-controls";
        repo = "rm_controllers-release";
        rev = "release/noetic/rm_controllers/0.1.7-1";
        sha256 = "sha256-HfrljPquPHA7g3FBdJJJQRMvReL9Ozh5XqF4SG50XMQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gpio-controller mimic-joint-controller rm-calibration-controllers rm-chassis-controllers rm-gimbal-controllers rm-orientation-controller rm-shooter-controllers robot-state-controller tof-radar-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package for RoboMaster.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
