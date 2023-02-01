
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, fake-localization, gmapping, map-server, move-base, stage-ros }:
buildRosPackage {
  pname = "ros-melodic-navigation-stage";
  version = "0.2.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "navigation_tutorials-release";
        rev = "release/melodic/navigation_stage/0.2.4-1";
        sha256 = "sha256-KUwKY+5l7EZ4Z+B+AtM1yE6m9PbTFiDGUk4dedhEC+s=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl fake-localization gmapping map-server move-base stage-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds example launch files for running the ROS navigation stack in stage.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
