
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rtt-ros, rtt-ros-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtt-rosdeployment";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_rosdeployment/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "dca3166a5ba8b4b4963643a6b317b3e4c0bf1cd6afd4d94f5376939a72dc7936";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rtt-ros rtt-ros-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rtt_rosdeployment provides an RTT plugin to control an ocl deployment component over ROS service calls.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
