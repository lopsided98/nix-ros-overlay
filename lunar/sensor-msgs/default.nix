
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, message-generation, message-runtime, std-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-sensor-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/lunar/sensor_msgs/1.12.7-0.tar.gz;
    sha256 = "2e2f5885e379708a8f5b3ab1ae9c34a7e452749410a5b279b1d8b4d8add00fa0";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  checkInputs = [ rosbag rosunit ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages for commonly used sensors, including
    cameras and scanning laser rangefinders.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
