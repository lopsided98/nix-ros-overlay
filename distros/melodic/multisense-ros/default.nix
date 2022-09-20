
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cv-bridge, dynamic-reconfigure, genmsg, geometry-msgs, image-geometry, image-transport, libjpeg_turbo, libyamlcpp, message-generation, message-runtime, multisense-lib, rosbag, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-multisense-ros";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_ros/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "a88588e4550c6e557b1bb0aac32e25760bc9e0eb185662cda3c00ede3d42210f";
  };

  buildType = "catkin";
  buildInputs = [ catkin libyamlcpp ];
  propagatedBuildInputs = [ angles cv-bridge dynamic-reconfigure genmsg geometry-msgs image-geometry image-transport libjpeg_turbo message-generation message-runtime multisense-lib rosbag roscpp sensor-msgs std-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin libyamlcpp ];

  meta = {
    description = ''multisense_ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
