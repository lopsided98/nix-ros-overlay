
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-aruco";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/kinetic/aruco/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "6631c37497ef6d33f00bc31237fad18e38e7435815df99804ab2c3dea77aa7a9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ARUCO Library has been developed by the Ava group of the Univeristy of Cordoba(Spain).
    It provides real-time marker based 3D pose estimation using AR markers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
