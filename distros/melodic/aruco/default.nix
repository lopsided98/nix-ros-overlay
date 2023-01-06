
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, eigen }:
buildRosPackage {
  pname = "ros-melodic-aruco";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/melodic/aruco/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "b4d7149feba62c53f6f2737ec8c0083cb01cb3aaeec24684196a13c0e78ca53e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ARUCO Library has been developed by the Ava group of the Univeristy of Cordoba(Spain).
    It provides real-time marker based 3D pose estimation using AR markers.'';
    license = with lib.licenses; [ mit ];
  };
}
