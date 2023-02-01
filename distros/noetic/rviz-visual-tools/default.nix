
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-stl-containers, geometry-msgs, graph-msgs, interactive-markers, ogre1_9, qt5, roscpp, roslint, rostest, rosunit, rviz, sensor-msgs, shape-msgs, std-msgs, tf2-eigen, tf2-geometry-msgs, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rviz-visual-tools";
  version = "3.9.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PickNikRobotics";
        repo = "rviz_visual_tools-release";
        rev = "release/noetic/rviz_visual_tools/3.9.3-1";
        sha256 = "sha256-SZuYn7IFxXKc3xah/ksL8v0l3CZCrHBwdvshYcHevcA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ eigen-stl-containers geometry-msgs graph-msgs interactive-markers ogre1_9 qt5.qtx11extras roscpp roslint rviz sensor-msgs shape-msgs std-msgs tf2-eigen tf2-geometry-msgs tf2-ros trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
