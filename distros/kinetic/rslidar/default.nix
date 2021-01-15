
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rslidar-driver, rslidar-msgs, rslidar-pointcloud }:
buildRosPackage {
  pname = "ros-kinetic-rslidar";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/CPFL/robosense-release/archive/release/kinetic/rslidar/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "e7eea0657c14d33daa967e9dbf914083adcb19edbd1e2ed6b125d5b42bd022c4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rslidar-driver rslidar-msgs rslidar-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic ROS support for the Robosense 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
