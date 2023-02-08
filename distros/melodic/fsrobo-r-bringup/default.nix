
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fsrobo-r-description, fsrobo-r-driver, fsrobo-r-moveit-config, robot-state-publisher, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fsrobo-r-bringup";
  version = "0.7.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "FUJISOFT-Robotics";
        repo = "fsrobo_r-release";
        rev = "release/melodic/fsrobo_r_bringup/0.7.1-1";
        sha256 = "sha256-89wyo74dZUNTnvI2ovox4JGJ1bZJ/sCxRy4vQzaarQc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fsrobo-r-description fsrobo-r-driver fsrobo-r-moveit-config robot-state-publisher tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fsrobo_r_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
