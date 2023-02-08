
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, openscenegraph, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-osg-utils";
  version = "1.0.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uji-ros-pkg";
        repo = "visualization_osg-release";
        rev = "release/melodic/osg_utils/1.0.2-2";
        sha256 = "sha256-AulpyytEOV8SvbxppmPReI3cLfsoAW3j2QDPNvVwMZo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs openscenegraph roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''osg_utils is a library that contains some classes that may be useful in ROS-OSG applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
