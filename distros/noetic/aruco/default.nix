
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, eigen }:
buildRosPackage {
  pname = "ros-noetic-aruco";
  version = "3.0.1-r3";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/noetic/aruco/3.0.1-3.tar.gz";
    name = "3.0.1-3.tar.gz";
    sha256 = "79ecb1dd67c8a0b5de6b7f226b219241c23298aa07c882990fcff7b578f7cb61";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ARUCO Library has been developed by the Ava group of the Univeristy of Cordoba(Spain).
    It provides real-time marker based 3D pose estimation using AR markers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
