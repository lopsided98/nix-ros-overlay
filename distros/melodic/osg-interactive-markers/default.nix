
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, openscenegraph, osg-markers, osg-utils, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-osg-interactive-markers";
  version = "1.0.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uji-ros-pkg";
        repo = "visualization_osg-release";
        rev = "release/melodic/osg_interactive_markers/1.0.2-2";
        sha256 = "sha256-xqhMWo7PDjemUmE9Ua07rYUagGIA5A709FPhX5X6KoQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ interactive-markers openscenegraph osg-markers osg-utils roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is basically an OpenSceneGraph (OSG) adaptation of the Interactive Markers client writen for rviz/Ogre.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
