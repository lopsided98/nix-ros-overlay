
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, pythonPackages, rosbag, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-sensor-msgs";
  version = "1.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/sensor_msgs/1.12.8-1.tar.gz";
    name = "1.12.8-1.tar.gz";
    sha256 = "b5f8b54c44bdabb59caf4d67240eace2f50c0278a191558122893cb7322d8d81";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pythonPackages.setuptools ];
  checkInputs = [ rosbag rosunit ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''This package defines messages for commonly used sensors, including
    cameras and scanning laser rangefinders.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
