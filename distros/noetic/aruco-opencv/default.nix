
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco-opencv-msgs, catkin, cv-bridge, dynamic-reconfigure, image-transport, nodelet, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-aruco-opencv";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fictionlab-gbp";
        repo = "aruco_opencv-release";
        rev = "release/noetic/aruco_opencv/0.2.0-1";
        sha256 = "sha256-Jeu8Pmk6oz03zZanWZPcJxqokU7EZYMWFPrgRkW6HLQ=";
      };

  buildType = "catkin";
  buildInputs = [ aruco-opencv-msgs catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport nodelet roscpp tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ArUco marker detection using aruco module from OpenCV libraries.'';
    license = with lib.licenses; [ mit ];
  };
}
