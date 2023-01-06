
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco, aruco-msgs, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, roscpp, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-aruco-ros";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/melodic/aruco_ros/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "9a23036d9b6a65a9a75b3182776a3184a5d22ba31d1608d7ef478f237a9beb6d";
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
