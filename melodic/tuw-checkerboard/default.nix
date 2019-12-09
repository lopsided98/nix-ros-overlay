
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, tf, catkin, marker-msgs, image-view, image-transport, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-tuw-checkerboard";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/melodic/tuw_checkerboard/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "e7d76c6bb8a14e31094674fc33504b7cca4335d4d0c2362ceda6811633fc483c";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure tf marker-msgs image-view image-transport cv-bridge image-geometry ];
  propagatedBuildInputs = [ dynamic-reconfigure tf marker-msgs image-view image-transport cv-bridge image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_checkerboard package is designed to detect one 
    checkerboard and to estimate the pose of the checkerboard relative to the camera.
    The detection itself is based on the opencv functions for checkerboards.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
