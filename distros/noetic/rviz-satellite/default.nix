
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, rviz, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rviz-satellite";
  version = "3.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "nobleo";
        repo = "rviz_satellite-release";
        rev = "release/noetic/rviz_satellite/3.0.3-1";
        sha256 = "sha256-AbKv0N1s6yyvavo96nAiT0AwSX84iN8hU8hg9/2DsIM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Display satellite map tiles in RViz'';
    license = with lib.licenses; [ asl20 ];
  };
}
