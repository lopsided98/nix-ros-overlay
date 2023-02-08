
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-mobile-robot }:
buildRosPackage {
  pname = "ros-noetic-ecl-navigation";
  version = "0.60.3-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "ecl_navigation-release";
        rev = "release/noetic/ecl_navigation/0.60.3-2";
        sha256 = "sha256-z63hJpfoyqhP8rI/Ri/3Kt+em5xuoOr0LSYOyW1LPVU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-mobile-robot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack aims to bring the common tools and algorithms needed to
    develop navigation algorithms, in particular slam. It does not focus on
    the end-point solution, rather the tools needed to create a variety of
    end-point solutions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
