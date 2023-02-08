
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heron-description, joint-state-publisher, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-melodic-heron-viz";
  version = "0.0.3-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "heron_desktop-release";
        rev = "release/melodic/heron_viz/0.0.3-2";
        sha256 = "sha256-p036aZOiJdrUk13Jv0gRZC54XWUGwbw3K7TLY/8iN48=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ heron-description joint-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization and rviz helpers for Heron.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
