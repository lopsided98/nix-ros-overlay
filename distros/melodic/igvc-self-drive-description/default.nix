
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-gazebo-plugins, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-igvc-self-drive-description";
  version = "0.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "robustify";
        repo = "igvc_self_drive_sim-release";
        rev = "release/melodic/igvc_self_drive_description/0.1.4-1";
        sha256 = "sha256-P6HRITD64atCpcRVYkERYZOF3BdEOVbbF2kYh6ULJW0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-gazebo-plugins urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meshes and URDF descriptions for Gem vehicle'';
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
