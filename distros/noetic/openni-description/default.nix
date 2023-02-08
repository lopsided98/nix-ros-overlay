
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-noetic-openni-description";
  version = "1.11.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "openni_camera-release";
        rev = "release/noetic/openni_description/1.11.1-1";
        sha256 = "sha256-mW4AMBSFtuaRDAZ6puWpGX3N95MAnIzsaVqs6a19P5I=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest urdfdom ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Model files of OpenNI device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
