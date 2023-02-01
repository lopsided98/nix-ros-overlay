
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, class-loader, play-motion-builder, play-motion-builder-msgs, play-motion-msgs, qt5, roscpp, rqt-gui, rqt-gui-cpp, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-melodic-rqt-play-motion-builder";
  version = "1.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-robotics";
        repo = "play_motion_builder-release";
        rev = "release/melodic/rqt_play_motion_builder/1.0.2-1";
        sha256 = "sha256-4hjKfNzI6s/5Dm5zTJL8MIN+e4tWq3M4J8Uq2X8b4DA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin class-loader qt5.qtbase ];
  propagatedBuildInputs = [ actionlib play-motion-builder play-motion-builder-msgs play-motion-msgs roscpp rqt-gui rqt-gui-cpp sensor-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_play_motion_builder package, a front-end interface for play_motion_builder'';
    license = with lib.licenses; [ "LGPL-3.0" ];
  };
}
