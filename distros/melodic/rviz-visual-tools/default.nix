
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, eigen-stl-containers, geometry-msgs, graph-msgs, ogre1_9, qt5, roscpp, roslint, rostest, rosunit, rviz, sensor-msgs, std-msgs, tf-conversions, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rviz-visual-tools";
  version = "3.8.0-r4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PickNikRobotics";
        repo = "rviz_visual_tools-release";
        rev = "release/melodic/rviz_visual_tools/3.8.0-4";
        sha256 = "sha256-JUAImO9LR4eNZtlODe/HeOIusD8caQw6Q0LEp+CpA00=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ eigen-conversions eigen-stl-containers geometry-msgs graph-msgs ogre1_9 qt5.qtx11extras roscpp roslint rviz sensor-msgs std-msgs tf-conversions trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
