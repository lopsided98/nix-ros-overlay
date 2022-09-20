
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco, aruco-msgs, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, roscpp, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-aruco-ros";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/melodic/aruco_ros/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "3f0e7c0a73539735395c9b4330d9f4b66be412275d2bdce7eb4a8e7ea09fb531";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ aruco aruco-msgs cv-bridge dynamic-reconfigure geometry-msgs image-transport roscpp sensor-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ARUCO Library has been developed by the Ava group of the Univeristy of Cordoba(Spain).
    It provides real-time marker based 3D pose estimation using AR markers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
