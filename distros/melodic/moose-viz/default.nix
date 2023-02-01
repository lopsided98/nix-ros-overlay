
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher-gui, moose-description, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-melodic-moose-viz";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "moose_desktop-release";
        rev = "release/melodic/moose_viz/0.1.1-1";
        sha256 = "sha256-mKK59ny3ifwGDoGevT7wDNIS+POnauddLTHvL72QLD8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher-gui moose-description rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Moose.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
