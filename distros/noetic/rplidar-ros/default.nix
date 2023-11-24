
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rplidar-ros";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/Slamtec/rplidar_ros-release/archive/release/noetic/rplidar_ros/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "e135d3fd09a7422a0d1ed25df2301109afdda66ef6ede75a0eb00929627d22c6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosconsole roscpp sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rplidar ros package, support rplidar A1/A2/A3/S1/S2/S3/T1/C1'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
