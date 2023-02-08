
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, cv-bridge, eigen, geometric-shapes, image-geometry, moveit-calibration-plugins, moveit-core, moveit-ros-perception, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-visualization, moveit-visual-tools, pkg-config, pluginlib, qt5, rosconsole, roscpp, rostest, rviz, rviz-visual-tools, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-calibration-gui";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "JStech";
        repo = "moveit_calibration-release";
        rev = "release/noetic/moveit_calibration_gui/0.1.0-1";
        sha256 = "sha256-HLD3BEIn+ZDHAKI2jibsNQ22D56SCcwfKIENt7eV1Fc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin class-loader eigen image-geometry pkg-config qt5.qtbase ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge geometric-shapes moveit-calibration-plugins moveit-core moveit-ros-perception moveit-ros-planning moveit-ros-planning-interface moveit-ros-visualization moveit-visual-tools pluginlib rosconsole roscpp rviz rviz-visual-tools tf2-eigen ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''MoveIt calibration gui'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
