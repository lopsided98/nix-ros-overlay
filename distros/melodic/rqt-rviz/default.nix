
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, pluginlib, qt5, rqt-gui, rqt-gui-cpp, rviz }:
buildRosPackage {
  pname = "ros-melodic-rqt-rviz";
  version = "0.7.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rqt_rviz-release";
        rev = "release/melodic/rqt_rviz/0.7.0-1";
        sha256 = "sha256-cLQ60gEfaxRNz4XGfHoKBMRaEmfD13y6zMBL7bUv84c=";
      };

  buildType = "catkin";
  buildInputs = [ catkin class-loader qt5.qtbase ];
  propagatedBuildInputs = [ boost pluginlib rqt-gui rqt-gui-cpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_rviz provides a GUI plugin embedding <a href="http://www.ros.org/wiki/rviz">RViz</a>.
    Note that this rqt plugin does NOT supersede RViz but depends on it.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
