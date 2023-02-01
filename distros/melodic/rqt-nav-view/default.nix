
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, python-qt-binding, qt-gui, rospy, rqt-gui, rqt-gui-py, rqt-py-common, tf }:
buildRosPackage {
  pname = "ros-melodic-rqt-nav-view";
  version = "0.5.7";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rqt_nav_view-release";
        rev = "release/melodic/rqt_nav_view/0.5.7-0";
        sha256 = "sha256-EP33l2lVCEe3AF/jxTwus9WHpxFk1R3awJ02+OEjINo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs python-qt-binding qt-gui rospy rqt-gui rqt-gui-py rqt-py-common tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_nav_view provides a gui for viewing navigation maps and paths.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
