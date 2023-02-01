
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rocon-bubble-icons";
  version = "0.3.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_tools-release";
        rev = "release/melodic/rocon_bubble_icons/0.3.2-0";
        sha256 = "sha256-/0IP2p+iBgHuS/nosc5bu4Oic9URQwY7Mg0UOGhf4aQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bubble icon library for rocon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
