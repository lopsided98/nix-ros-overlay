
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, color-util, robot-nav-rviz-plugins, robot-nav-viz-demos }:
buildRosPackage {
  pname = "ros-noetic-robot-nav-tools";
  version = "0.3.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DLu";
        repo = "robot_navigation-release";
        rev = "release/noetic/robot_nav_tools/0.3.0-2";
        sha256 = "sha256-o7tUo1g/alr7qtzlh5Ep0sTrbP/zy8ah3EUaeSPGTCo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ color-util robot-nav-rviz-plugins robot-nav-viz-demos ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tools / accessories for the robot_navigation packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
