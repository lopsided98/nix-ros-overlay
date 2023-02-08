
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, freeglut, xorg }:
buildRosPackage {
  pname = "ros-melodic-uwsim-bullet";
  version = "2.82.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uji-ros-pkg";
        repo = "uwsim_bullet-release";
        rev = "release/melodic/uwsim_bullet/2.82.2-1";
        sha256 = "sha256-YAYcFcvAyEV7kfFXCVuXcydDR88uzRrFvJOdV4taH0g=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin freeglut xorg.libXext ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The bullet library. See https://code.google.com/p/bullet'';
    license = with lib.licenses; [ "Check-authors-website" ];
  };
}
