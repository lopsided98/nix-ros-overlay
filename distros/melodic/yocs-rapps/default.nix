
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, yocs-velocity-smoother }:
buildRosPackage {
  pname = "ros-melodic-yocs-rapps";
  version = "0.8.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "yujin_ocs-release";
        rev = "release/melodic/yocs_rapps/0.8.2-0";
        sha256 = "sha256-swwMl1T9AsrnWwZr7Z//1cpQXmq3CydJeiDUl6GOKyM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ yocs-velocity-smoother ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Yujin open control system rapps for use with the app manager and rocon concert'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
