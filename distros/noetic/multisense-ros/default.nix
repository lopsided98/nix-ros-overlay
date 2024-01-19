
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cv-bridge, dynamic-reconfigure, genmsg, geometry-msgs, image-geometry, image-transport, libjpeg_turbo, message-generation, message-runtime, multisense-lib, rosbag, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-multisense-ros";
  version = "4.0.5-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/noetic/multisense_ros/4.0.5-1.tar.gz";
    name = "4.0.5-1.tar.gz";
    sha256 = "97daa179c011827a5f2f455a43e7151c410b5848cfb15e69a9dbb9e564657eb0";
  };

  buildType = "catkin";
  buildInputs = [ catkin yaml-cpp ];
  propagatedBuildInputs = [ angles cv-bridge dynamic-reconfigure genmsg geometry-msgs image-geometry image-transport libjpeg_turbo message-generation message-runtime multisense-lib rosbag roscpp sensor-msgs std-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin yaml-cpp ];

  meta = {
    description = ''multisense_ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
