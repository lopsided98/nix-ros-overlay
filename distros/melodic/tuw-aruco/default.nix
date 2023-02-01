
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-geometry, image-transport, marker-msgs, roscpp, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-tuw-aruco";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tuw-robotics";
        repo = "tuw_marker_detection-release";
        rev = "release/melodic/tuw_aruco/0.1.1-1";
        sha256 = "sha256-52XtLhGoUboykIN8E/Z4w9zwAB93wh2TT4MUZywOGIw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-geometry image-transport marker-msgs roscpp rospy std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a wrapper around the marker detection library ArUco.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
