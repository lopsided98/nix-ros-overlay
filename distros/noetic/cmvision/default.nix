
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, fltk, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, wxGTK }:
buildRosPackage {
  pname = "ros-noetic-cmvision";
  version = "0.5.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "teshanshanuka";
        repo = "cmvision-release";
        rev = "release/noetic/cmvision/0.5.0-2";
        sha256 = "sha256-rjJdq5kNcBuZhW/A8C0WcEIqaAigj7A/GqsTmfD2t2k=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cv-bridge fltk message-runtime roscpp sensor-msgs std-msgs wxGTK ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the Color Machine Vision Project, used for fast color blob detection'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
