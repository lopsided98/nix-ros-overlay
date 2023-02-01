
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, move-base-msgs, nav-msgs, roscpp, tf, visualization-msgs, yocs-math-toolkit, yocs-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-waypoints-navi";
  version = "0.8.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "yujin_ocs-release";
        rev = "release/melodic/yocs_waypoints_navi/0.8.2-0";
        sha256 = "sha256-jbzYPxA6mv8lI7QvPV0XzbDZr28ByO6DpoPemAzz5Y0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs move-base-msgs nav-msgs roscpp tf visualization-msgs yocs-math-toolkit yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple tool for waypoints navigation with two functions:
    <br/> * Command the robot to go to a goal by passing through a series of waypoints.
    <br/> * Command the robot to constantly loop through a series of waypoints, useful for patrol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
