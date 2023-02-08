
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mav-msgs, mav-planning-msgs }:
buildRosPackage {
  pname = "ros-melodic-mav-comm";
  version = "3.3.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ethz-asl";
        repo = "mav_comm-release";
        rev = "release/melodic/mav_comm/3.3.2-0";
        sha256 = "sha256-Q0Coclx2t/mrkMOfRMGNyW+5gFMfiymfklclaB6Bxo4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mav-msgs mav-planning-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains messages and services for MAV communication'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
