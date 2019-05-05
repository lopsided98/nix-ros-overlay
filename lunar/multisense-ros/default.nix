
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, image-geometry, tf, geometry-msgs, stereo-msgs, image-transport, libjpeg_turbo, message-generation, message-runtime, multisense-lib, angles, genmsg, rosbag, catkin, std-msgs, roscpp, libyamlcpp, sensor-msgs, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-multisense-ros";
  version = "4.0.2-r1";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/lunar/multisense_ros/4.0.2-1.tar.gz;
    sha256 = "2647113dc9ca00ddc40536bf078c1d9208df58cf22351c7d70ca5197c3a9b3af";
  };

  buildInputs = [ image-transport libjpeg_turbo rosbag sensor-msgs cv-bridge genmsg roscpp image-geometry message-generation message-runtime multisense-lib dynamic-reconfigure std-msgs angles tf geometry-msgs stereo-msgs ];
  propagatedBuildInputs = [ image-transport libjpeg_turbo rosbag sensor-msgs cv-bridge genmsg roscpp image-geometry message-generation message-runtime multisense-lib dynamic-reconfigure std-msgs angles tf geometry-msgs stereo-msgs ];
  nativeBuildInputs = [ libyamlcpp catkin ];

  meta = {
    description = ''multisense_ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
