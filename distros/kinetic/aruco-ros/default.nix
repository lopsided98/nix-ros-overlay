
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco, aruco-msgs, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, roscpp, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-aruco-ros";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/kinetic/aruco_ros/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "ce8f1625b98d03e73fe10208cf432a0862d72645e1b780a515b050d426d9f51e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ aruco aruco-msgs cv-bridge dynamic-reconfigure geometry-msgs image-transport roscpp sensor-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ARUCO Library has been developed by the Ava group of the Univeristy of Cordoba(Spain).
    It provides real-time marker based 3D pose estimation using AR markers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
