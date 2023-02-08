
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer-ros, catkin, map-server, move-base, ridgeback-navigation, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-cartographer-navigation";
  version = "0.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "ridgeback_cartographer_navigation-release";
        rev = "release/melodic/ridgeback_cartographer_navigation/0.0.1-1";
        sha256 = "sha256-KlVSyAKMKfIa6zfmTtwgXava2Vgl54QPAz+KLdLAgqM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ cartographer-ros map-server move-base ridgeback-navigation urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Ridgeback using Google Cartographer'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
