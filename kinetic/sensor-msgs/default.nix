
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, message-generation, message-runtime, std-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sensor-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/kinetic/sensor_msgs/1.12.7-0.tar.gz;
    sha256 = "c6dc7550aa24eb95abdd0a98e55de8bc0e20f693648c572f2648fdd7f97cc518";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  checkInputs = [ rosbag rosunit ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages for commonly used sensors, including
    cameras and scanning laser rangefinders.'';
    #license = lib.licenses.BSD;
  };
}
