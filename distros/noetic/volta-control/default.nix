
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, joint-state-controller, twist-mux }:
buildRosPackage {
  pname = "ros-noetic-volta-control";
  version = "1.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "botsync-gbp";
        repo = "volta-release";
        rev = "release/noetic/volta_control/1.2.0-1";
        sha256 = "sha256-aeRbLAbbFCOPHJtDqEIZaunBwC7E5fZfwPVfQf9zgHk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-controller twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_control package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
