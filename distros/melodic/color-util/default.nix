
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-color-util";
  version = "0.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DLu";
        repo = "robot_navigation-release";
        rev = "release/melodic/color_util/0.3.0-1";
        sha256 = "sha256-/KNetcsaFZ+yC9UBoDkeDAM4O5/ja/xGduN2dKaPrVs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An almost dependency-less library for converting between color spaces'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
