
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, realsense2-description, robotont-description, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-robotont-nuc-description";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "robotont-release";
        repo = "robotont_nuc_description-release";
        rev = "release/melodic/robotont_nuc_description/0.0.2-1";
        sha256 = "sha256-PFLNfO56Pkf9tf2YuWVyEHWiiwKCs7OoHEkqdd3oLW0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ realsense2-description robotont-description rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robotont_nuc_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
