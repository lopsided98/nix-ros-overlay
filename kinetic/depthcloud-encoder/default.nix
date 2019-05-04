
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, cv-bridge, message-filters, catkin, pcl-ros, tf-conversions, dynamic-reconfigure, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-depthcloud-encoder";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/depthcloud_encoder-release/archive/release/kinetic/depthcloud_encoder/0.1.0-0.tar.gz;
    sha256 = "12764a6087187156eaeaa015e75e1cee3f3c15e434e92972cfaa9d64c2c2fab0";
  };

  buildInputs = [ image-transport sensor-msgs cv-bridge message-filters pcl-ros dynamic-reconfigure tf-conversions roscpp pcl-conversions ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge message-filters pcl-ros dynamic-reconfigure tf-conversions roscpp pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point Cloud Encoder for Web-Based Streaming'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
