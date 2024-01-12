
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, python3Packages, rosbag, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-sensor-msgs";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/sensor_msgs/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "25dfebaba7e08b4eab9bb670d3d9884a2bdd94e3976cd65ccbb8fc948c22b058";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  checkInputs = [ rosbag rosunit ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''This package defines messages for commonly used sensors, including
    cameras and scanning laser rangefinders.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
