
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, image-transport, sensor-msgs, message-runtime, dynamic-reconfigure, libyamlcpp, multisense-lib, rosbag, std-msgs, catkin, cv-bridge, roscpp, angles, message-generation, image-geometry, genmsg, stereo-msgs, libjpeg_turbo }:
buildRosPackage {
  pname = "ros-kinetic-multisense-ros";
  version = "4.0.0";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_ros/4.0.0-0.tar.gz";
    name = "4.0.0-0.tar.gz";
    sha256 = "64dbfe1a34999ec414c8caec8f7b9d34baf10c08e74584ace80cab60122ce0d5";
  };

  buildType = "catkin";
  buildInputs = [ libjpeg_turbo sensor-msgs geometry-msgs message-runtime dynamic-reconfigure genmsg std-msgs rosbag tf image-transport stereo-msgs cv-bridge multisense-lib roscpp angles message-generation image-geometry ];
  propagatedBuildInputs = [ libjpeg_turbo sensor-msgs geometry-msgs dynamic-reconfigure message-runtime std-msgs genmsg rosbag tf image-transport stereo-msgs cv-bridge multisense-lib roscpp angles message-generation image-geometry ];
  nativeBuildInputs = [ libyamlcpp catkin ];

  meta = {
    description = ''multisense_ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
