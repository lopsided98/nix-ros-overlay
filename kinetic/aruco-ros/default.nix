
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, dynamic-reconfigure, aruco-msgs, tf, catkin, image-transport, cv-bridge, visualization-msgs, roscpp, aruco }:
buildRosPackage {
  pname = "ros-kinetic-aruco-ros";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/kinetic/aruco_ros/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "ce8f1625b98d03e73fe10208cf432a0862d72645e1b780a515b050d426d9f51e";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure aruco-msgs tf image-transport cv-bridge visualization-msgs roscpp aruco ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs aruco-msgs dynamic-reconfigure tf image-transport cv-bridge visualization-msgs roscpp aruco ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ARUCO Library has been developed by the Ava group of the Univeristy of Cordoba(Spain).
    It provides real-time marker based 3D pose estimation using AR markers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
