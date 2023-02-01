
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-human-description";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros4hri";
        repo = "human_description-release";
        rev = "release/noetic/human_description/1.0.0-1";
        sha256 = "sha256-IOiqvPIAOordrjzw3G+CeOGXowXXGRNwkrC3RNIKHvI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a parametric kinematic description of humans. 
        The files in this package are parsed and used by a variety of other 
        components, notably in the context of human-robot interaction.
        Most users will not interact directly with this package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
