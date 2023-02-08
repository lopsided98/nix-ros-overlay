
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco, aruco-msgs, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, roscpp, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-aruco-ros";
  version = "3.1.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-gbp";
        repo = "aruco_ros-release";
        rev = "release/noetic/aruco_ros/3.1.3-1";
        sha256 = "sha256-56F+PLQBYLrO/s7jjbBRxisp8yE7zEbziuDr461HXNc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ aruco aruco-msgs cv-bridge dynamic-reconfigure geometry-msgs image-transport roscpp sensor-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ARUCO Library has been developed by the Ava group of the Univeristy of Cordoba(Spain).
    It provides real-time marker based 3D pose estimation using AR markers.'';
    license = with lib.licenses; [ mit ];
  };
}
