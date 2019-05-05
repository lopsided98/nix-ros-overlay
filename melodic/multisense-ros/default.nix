
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, image-geometry, tf, geometry-msgs, stereo-msgs, image-transport, libjpeg_turbo, message-generation, message-runtime, multisense-lib, angles, genmsg, rosbag, catkin, std-msgs, roscpp, libyamlcpp, sensor-msgs, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-multisense-ros";
  version = "4.0.2";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_ros/4.0.2-0.tar.gz;
    sha256 = "c1b2959f4247366b8fffeab9da15990e326707d8abfe4967b16065d6ec3a2af8";
  };

  buildInputs = [ image-transport libjpeg_turbo rosbag sensor-msgs cv-bridge genmsg roscpp image-geometry message-generation message-runtime multisense-lib dynamic-reconfigure std-msgs angles tf geometry-msgs stereo-msgs ];
  propagatedBuildInputs = [ image-transport libjpeg_turbo rosbag sensor-msgs cv-bridge genmsg roscpp image-geometry message-generation message-runtime multisense-lib dynamic-reconfigure std-msgs angles tf geometry-msgs stereo-msgs ];
  nativeBuildInputs = [ libyamlcpp catkin ];

  meta = {
    description = ''multisense_ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
