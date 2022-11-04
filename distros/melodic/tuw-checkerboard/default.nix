
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-geometry, image-transport, image-view, marker-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-tuw-checkerboard";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/melodic/tuw_checkerboard/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "e7d76c6bb8a14e31094674fc33504b7cca4335d4d0c2362ceda6811633fc483c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-geometry image-transport image-view marker-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_checkerboard package is designed to detect one 
    checkerboard and to estimate the pose of the checkerboard relative to the camera.
    The detection itself is based on the opencv functions for checkerboards.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
