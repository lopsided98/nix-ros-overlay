
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, message-generation, message-runtime, std-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-sensor-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/sensor_msgs/1.12.7-0.tar.gz";
    name = "1.12.7-0.tar.gz";
    sha256 = "25b8448825591eb461e1d3e24c32fd2a1f2e1e2e69c56bd67748c54c7f8d3529";
  };

  buildType = "catkin";
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
