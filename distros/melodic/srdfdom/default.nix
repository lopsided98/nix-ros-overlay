
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, console-bridge, rostest, tinyxml, urdf, urdfdom-py }:
buildRosPackage {
  pname = "ros-melodic-srdfdom";
  version = "0.5.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "srdfdom-release";
        rev = "release/melodic/srdfdom/0.5.2-1";
        sha256 = "sha256-FBTSP7R9i+cR/crV3DVK4uuxd7Nw3+QjA5N9SJk3Xdk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules console-bridge ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost tinyxml urdf urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
