
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kdl-parser, robot-state-publisher, roscpp, rosunit, tf, visualization-msgs, xpp-msgs, xpp-states }:
buildRosPackage {
  pname = "ros-noetic-xpp-vis";
  version = "1.0.10-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "leggedrobotics";
        repo = "xpp-release";
        rev = "release/noetic/xpp_vis/1.0.10-1";
        sha256 = "sha256-AHVyk9igM9Bt87Es87HfMaDs530HGaX05Obv1uehiJg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ kdl-parser robot-state-publisher roscpp tf visualization-msgs xpp-msgs xpp-states ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization for the XPP Motion Framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
