
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cv-bridge, dynamic-reconfigure, genmsg, geometry-msgs, image-geometry, image-transport, libjpeg_turbo, libyamlcpp, message-generation, message-runtime, multisense-lib, rosbag, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-multisense-ros";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/noetic/multisense_ros/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "07e5cf6e88717f8420bd438e2c25b39019b432fc35b8f2e03dd25eb5bd6cca4e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles cv-bridge dynamic-reconfigure genmsg geometry-msgs image-geometry image-transport libjpeg_turbo message-generation message-runtime multisense-lib rosbag roscpp sensor-msgs std-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin libyamlcpp ];

  meta = {
    description = ''multisense_ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
