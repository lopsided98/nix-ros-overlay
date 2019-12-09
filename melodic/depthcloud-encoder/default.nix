
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, message-filters, dynamic-reconfigure, catkin, image-transport, cv-bridge, pcl-conversions, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-depthcloud-encoder";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/depthcloud_encoder-release/archive/release/melodic/depthcloud_encoder/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "cd0303245ac1fcc135761ad4d18dda3ed256e4165cf4fbbd6a4182037cecece6";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs message-filters dynamic-reconfigure image-transport cv-bridge pcl-conversions roscpp tf-conversions ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs message-filters dynamic-reconfigure image-transport cv-bridge pcl-conversions roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point Cloud Encoder for Web-Based Streaming'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
