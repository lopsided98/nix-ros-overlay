
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, color-util, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid, nav-grid-iterators, nav-grid-pub-sub, nav-msgs, pluginlib, qt5, roscpp, roslint, rviz, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-robot-nav-rviz-plugins";
  version = "0.3.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DLu";
        repo = "robot_navigation-release";
        rev = "release/noetic/robot_nav_rviz_plugins/0.3.0-2";
        sha256 = "sha256-mys+GOTnvNshjsTMKCjQzUqU93GQYfrAhENku9u3wU8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ color-util geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-grid nav-grid-iterators nav-grid-pub-sub nav-msgs pluginlib qt5.qtbase roscpp rviz std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RViz visualizations for robot_navigation datatypes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
