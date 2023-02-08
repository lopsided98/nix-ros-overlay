
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosflight, rosflight-firmware, rosflight-msgs, rosflight-sim, rosflight-utils }:
buildRosPackage {
  pname = "ros-melodic-rosflight-pkgs";
  version = "1.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rosflight";
        repo = "rosflight-release";
        rev = "release/melodic/rosflight_pkgs/1.3.1-1";
        sha256 = "sha256-ikNnsgxClDSpU0G4fwvuB2/aimFX/JRZibMyvhjaOEs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosflight rosflight-firmware rosflight-msgs rosflight-sim rosflight-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface for the ROSflight autpilot stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
