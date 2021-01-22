
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cv-bridge, dynamic-reconfigure, genmsg, geometry-msgs, image-geometry, image-transport, libjpeg_turbo, libyamlcpp, message-generation, message-runtime, multisense-lib, rosbag, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-multisense-ros";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_ros/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "45de6d3e472f3023bd39a6b949f3d0a5f6ee79db30fac7e0b5e350adc466c12c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles cv-bridge dynamic-reconfigure genmsg geometry-msgs image-geometry image-transport libjpeg_turbo message-generation message-runtime multisense-lib rosbag roscpp sensor-msgs std-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin libyamlcpp ];

  meta = {
    description = ''multisense_ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
