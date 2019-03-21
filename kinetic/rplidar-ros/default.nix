
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosconsole, sensor-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rplidar-ros";
  version = "1.7.0";

  src = fetchurl {
    url = https://github.com/Slamtec/rplidar_ros-release/archive/release/kinetic/rplidar_ros/1.7.0-0.tar.gz;
    sha256 = "fa8714783305f08960ba816ca6188fa7a9f6a9ae28205ffb48ad64baf9005abb";
  };

  propagatedBuildInputs = [ std-srvs sensor-msgs roscpp rosconsole ];
  nativeBuildInputs = [ std-srvs catkin rosconsole sensor-msgs roscpp ];

  meta = {
    description = ''The rplidar ros package, support rplidar A2/A1 and A3'';
    #license = lib.licenses.BSD;
  };
}
