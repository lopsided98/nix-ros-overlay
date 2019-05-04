
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, image-geometry, tf, geometry-msgs, stereo-msgs, image-transport, libjpeg_turbo, message-generation, message-runtime, multisense-lib, angles, genmsg, rosbag, catkin, std-msgs, roscpp, libyamlcpp, sensor-msgs, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-multisense-ros";
  version = "4.0.0";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_ros/4.0.0-0.tar.gz;
    sha256 = "64dbfe1a34999ec414c8caec8f7b9d34baf10c08e74584ace80cab60122ce0d5";
  };

  buildInputs = [ image-transport libjpeg_turbo rosbag sensor-msgs cv-bridge genmsg roscpp image-geometry message-generation message-runtime multisense-lib dynamic-reconfigure std-msgs angles tf geometry-msgs stereo-msgs ];
  propagatedBuildInputs = [ image-transport libjpeg_turbo rosbag sensor-msgs cv-bridge genmsg roscpp image-geometry message-generation message-runtime multisense-lib dynamic-reconfigure std-msgs angles tf geometry-msgs stereo-msgs ];
  nativeBuildInputs = [ libyamlcpp catkin ];

  meta = {
    description = ''multisense_ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
