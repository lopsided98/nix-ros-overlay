
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco, aruco-msgs, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, roscpp, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-aruco-ros";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/noetic/aruco_ros/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "a06dc78e52d1b342a5ce09c5d8ec98100fd26c4afbfc0c3c7a0a5b2efdbb3529";
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
