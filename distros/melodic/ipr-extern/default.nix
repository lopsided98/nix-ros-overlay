
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libmodbus, libreflexxestype2, ros-reflexxes }:
buildRosPackage {
  pname = "ros-melodic-ipr-extern";
  version = "0.8.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "KITrobotics";
        repo = "ipr_extern-release";
        rev = "release/melodic/ipr_extern/0.8.8-1";
        sha256 = "sha256-GU8Xmk1SXG5m7msNUb1wJHvZsgrH8jLXTk3yxR/u3FU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libmodbus libreflexxestype2 ros-reflexxes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with external libraries used in Industrial and Service workspaces. Currentlly supported Libraries: Reflexxes, Libmodbus.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
