
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, rm-dbus, rm-description, rm-hw, rm-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-control";
  version = "0.1.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rm-controls";
        repo = "rm_control-release";
        rev = "release/noetic/rm_control/0.1.15-1";
        sha256 = "sha256-mdY1hW+0QDnEsKa5by5baxvAAK6jde3xHAy1dARpBTc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rm-common rm-dbus rm-description rm-hw rm-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package of rm_control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
