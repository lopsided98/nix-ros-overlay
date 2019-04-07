
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-ros-msgs, catkin, rtt-ros, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rtt-rosdeployment";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_rosdeployment/2.9.1-0.tar.gz;
    sha256 = "0a01448b81141e4b478abb90a4ceb42dc66bee97aa38adc5c6ff02ea484f0202";
  };

  buildInputs = [ rtt-ros-msgs roscpp rtt-ros ];
  propagatedBuildInputs = [ rtt-ros-msgs roscpp rtt-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rtt_rosdeployment provides an RTT plugin to control an ocl deployment component over ROS service calls.'';
    #license = lib.licenses.BSD;
  };
}
