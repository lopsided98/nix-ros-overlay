
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-ros-msgs, catkin, rtt-ros, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rtt-rosdeployment";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_rosdeployment/2.9.2-1.tar.gz;
    sha256 = "daaad2b925d9fdcbca70e327e7b36c128815c67e9fffa263b053941b6f09ed7e";
  };

  buildInputs = [ rtt-ros-msgs roscpp rtt-ros ];
  propagatedBuildInputs = [ rtt-ros-msgs roscpp rtt-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rtt_rosdeployment provides an RTT plugin to control an ocl deployment component over ROS service calls.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
