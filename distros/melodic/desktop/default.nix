
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, common-tutorials, geometry-tutorials, robot, ros-tutorials, roslint, urdf-tutorial, visualization-tutorials, viz }:
buildRosPackage {
  pname = "ros-melodic-desktop";
  version = "1.4.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "metapackages-release";
        rev = "release/melodic/desktop/1.4.1-0";
        sha256 = "sha256-kdth0D9c1qDEQxDTRk8f9UK43u5h3NDkmUBVK+5j6W0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles common-tutorials geometry-tutorials robot ros-tutorials roslint urdf-tutorial visualization-tutorials viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
