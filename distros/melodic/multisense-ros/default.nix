
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cv-bridge, dynamic-reconfigure, genmsg, geometry-msgs, image-geometry, image-transport, libjpeg_turbo, libyamlcpp, message-generation, message-runtime, multisense-lib, rosbag, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-multisense-ros";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_ros/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "f08a096628f18e566525d14d25a7b91ff8c3d5b2182e6eb5fa8d9e7fda9b59e8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles cv-bridge dynamic-reconfigure genmsg geometry-msgs image-geometry image-transport libjpeg_turbo message-generation message-runtime multisense-lib rosbag roscpp sensor-msgs std-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin libyamlcpp ];

  meta = {
    description = ''multisense_ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
