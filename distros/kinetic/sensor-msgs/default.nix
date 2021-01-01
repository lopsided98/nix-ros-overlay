
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sensor-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/kinetic/sensor_msgs/1.12.7-0.tar.gz";
    name = "1.12.7-0.tar.gz";
    sha256 = "c6dc7550aa24eb95abdd0a98e55de8bc0e20f693648c572f2648fdd7f97cc518";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rosbag rosunit ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages for commonly used sensors, including
    cameras and scanning laser rangefinders.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
