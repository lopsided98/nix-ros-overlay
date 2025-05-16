
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, python3Packages, rosbag, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-sensor-msgs";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/sensor_msgs/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "d8409a4b438669f0b375e578a62fe6962ab0fe0450400cfdd2d668fb677b061c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  checkInputs = [ rosbag rosunit ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "This package defines messages for commonly used sensors, including
    cameras and scanning laser rangefinders.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
